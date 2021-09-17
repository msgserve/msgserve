import 'dart:convert';
import 'dart:io' as io;
import 'dart:io';

import 'package:clock/clock.dart';
import 'package:file/file.dart';
import 'package:file/local.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_async_utils/flutter_async_utils.dart';
import 'package:http/http.dart';
import 'package:logging/logging.dart';
import 'package:msgserve_client/src/dto/msgserve_dto.dart';
import 'package:msgserve_client/src/msgserve_data.dart';
import 'package:msgserve_client/src/msgserve_opts.dart';
import 'package:msgserve_client/src/util/extensions.dart';
import 'package:msgserve_client/src/util/uuid_util.dart';
import 'package:path_provider/path_provider.dart';
import 'package:simple_json_persistence/simple_json_persistence.dart';
import 'package:uuid/uuid.dart';

final _logger = Logger('msgserv_client');

class MsgServeApi {
  MsgServeApi({
    required this.opts,
    required this.packageInfo,
    this.headers,
  });

  final MsgServeOpts opts;
  final MsgServePackageInfo packageInfo;
  final Map<String, String>? headers;

  Client? _client;
  Uri? _endpointUri;

  Client _getClient() => _client ??= opts.httpClient();

  Future<Uri> _uri(List<String> path,
      {Map<String, String>? queryParameters}) async {
    _endpointUri ??= Uri.parse(opts.endpointUrl);
    return _endpointUri!.replace(
        pathSegments: _endpointUri!.pathSegments + path,
        queryParameters: queryParameters);
  }

  Map<String, String> _toQueryParameters(MsgServePackageInfo packageInfo) {
    return <String, String>{
      'package': packageInfo.packageName,
      'platform': _operatingSystem(),
    };
  }

  String _toUserAgent(MsgServePackageInfo packageInfo) {
    return 'diac (${_operatingSystem()}, '
        '${packageInfo.packageName}'
        '@${packageInfo.version}+${packageInfo.buildNumber})';
  }

  Future<MsgServeConfig?> fetchConfig() async {
    final uri = await _uri(['campaigns.json'],
        queryParameters: _toQueryParameters(packageInfo));
    try {
      final client = _getClient();
      _logger.finest('loading $uri with $client');
      final response = await client.post(uri, headers: {
        'User-Agent': _toUserAgent(packageInfo),
        ...?headers,
      });
      final type = response.statusCode ~/ 100;
      final body = utf8.decode(response.bodyBytes);
      if (type != 2) {
        _logger.fine('Error while loading diac config. ${response.statusCode}'
            ' - $body');
        return null;
      }
      _logger.finest('Got response ${response.statusCode},'
          ' ${body.length}');
      return MsgServeConfig.fromJson(
        json.decode(body) as Map<String, dynamic>,
      );
    } catch (e, stackTrace) {
      _logger.warning(
          'Error while fetching configuration from $uri', e, stackTrace);
      rethrow;
    }
  }
}

class MsgServeClient with StreamSubscriberBase {
  MsgServeClient({required this.opts})
      : store = SimpleJsonPersistence.getForTypeWithDefault(
          (data) => MsgServeData.fromJson(data),
          name: 'MsgServData',
          defaultCreator: () => MsgServeData(
            deviceId: const Uuid().v4(),
            firstLaunch: clock.now().toUtc(),
            seen: [],
            cachedImages: {},
            lastConfig: opts.initialConfig,
            lastConfigFetchedAt: DateTime.fromMicrosecondsSinceEpoch(0).toUtc(),
          ),
        ) {
    var coldStart = true;
    handle(store.onValueChangedAndLoad.listen((event) async {
      _logger.finer('got data event $event');
      final interval =
          coldStart ? opts.refetchIntervalCold : opts.refetchInterval;
      coldStart = false;
      if (event.lastConfig == null) {
        _logger.fine('Never fetched config before, reloading');
        await reloadConfigFromServer();
      } else if (event.lastConfigFetchedAt.difference(clock.now()).abs() >
          interval) {
        coldStart = false;
        _logger.fine('config fetched > ${opts.refetchInterval} ago. reload.');
        await reloadConfigFromServer();
      } else if (opts.initialConfig.updatedAt
          .isAfter(event.lastConfig!.updatedAt)) {
        await _updateConfig(opts.initialConfig);
      }
    }));
  }

  @visibleForTesting
  MsgServeApi? api;

  MsgServeOpts opts;

  final SimpleJsonPersistenceWithDefault<MsgServeData> store;

  late final _cacheDirectory = _createCacheDirectory();

  Future<MsgServeConfig?> _fetchConfig() async {
    if (opts.disableConfigFetch) {
      _logger.finer('iac message fetching disabled.');
      return opts.initialConfig;
    }
    final data = await store.load();
    api ??= MsgServeApi(
      opts: opts,
      packageInfo: await opts.getPackageInfo(),
      headers: {
        'X-Device': data.deviceId,
      },
    );
    return await api!.fetchConfig();
  }

  Future<void>? _reloadConfigFromServerFuture;

  Future<void> reloadConfigFromServer() {
    return _reloadConfigFromServerFuture ??= _reloadConfigFromServerNow()
        .whenComplete(() => _reloadConfigFromServerFuture = null);
  }

  Future<void> _reloadConfigFromServerNow() async {
    try {
      final config = await _fetchConfig();
      if (config == null) {
        return;
      }
      final data = await _updateConfig(config);

      _logger.finest('fetched msgserv config. prefetching images.');
      final campaigns = config.campaigns;
      for (final campaign in campaigns) {
        await campaign.interstitial?.let((it) async {
          for (final graphic in it.graphics) {
            await _prefetchImage(data, graphic);
          }
        });
      }
      _logger.finest('done prefetching images.');
    } catch (error, stackTrace) {
      _logger.warning(
        'Error while loading config. Silently ignore it.',
        error,
        stackTrace,
      );
    }
  }

  Future<MsgServeData> _updateConfig(MsgServeConfig config) async {
    return await store.update((data) => data!.copyWith(
          deviceId: data.deviceId,
          lastConfig: config,
          lastConfigFetchedAt: clock.now().toUtc(),
        ));
  }

  Future<List<MapEntry<T, io.File>>> prepareFilesFor<T extends MsgServeGraphic>(
      List<T> images) async {
    final data = await store.load();
    try {
      return [
        for (final image in images)
          MapEntry(image, io.File((await _prefetchImage(data, image)).path))
      ];
    } catch (e, stackTrace) {
      _logger.severe('Unable to prefetch files.', e, stackTrace);
      rethrow;
    }
  }

  Future<Directory> _createCacheDirectory() async {
    const fs = LocalFileSystem();
    if (io.Platform.isAndroid) {
      final external = await getExternalCacheDirectories();
      if (external != null && external.isNotEmpty) {
        return fs.directory(external.first.path);
      }
    }
    final temp = await getTemporaryDirectory();
    return fs.directory(temp);
  }

  Future<File> _prefetchImage(MsgServeData data, MsgServeGraphic image) async {
    _logger.fine('prefetch image $image');
    final dir = await _cacheDirectory;
    _logger.fine('into $dir');
    {
      final cacheFileName = data.cachedImages[image.url];
      if (cacheFileName != null) {
        final cacheFile = dir.childFile(cacheFileName);
        if (cacheFile.existsSync()) {
          // already exists.
          return cacheFile;
        }
      }
    }
    final client = api?._getClient() ?? Client();
    final response = await client.get(Uri.parse(image.url));
    final cacheFileName = UuidUtil.instance.create();
    final cacheFile = dir.childFile(cacheFileName);
    await cacheFile.writeAsBytes(response.bodyBytes, flush: true);
    await store.update(
      (data) => data!.copyWith(
        cachedImages: {
          ...data.cachedImages,
          image.url: cacheFileName,
        },
      ),
    );
    return cacheFile;
  }

  Future<void> dispose() async {
    cancelSubscriptions();
  }
}

String _operatingSystem() => kIsWeb ? 'web' : Platform.operatingSystem;
