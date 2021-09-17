import 'package:flutter/foundation.dart';
import 'package:http/http.dart';
import 'package:msgserve_client/src/dto/msgserve_dto.dart';
import 'package:package_info/package_info.dart';

class MsgServOpts {
  ///
  /// [initialConfig]: initial config used before first http request,
  /// or if config fetching is disabled.
  MsgServOpts({
    required this.endpointUrl,
    MsgServConfig? initialConfig,
    this.disableConfigFetch = false,
    this.refetchInterval = const Duration(hours: 1),
    this.refetchIntervalCold = const Duration(hours: 1),
    this.httpClient = createClient,
    this.packageInfo,
  })  : assert(!endpointUrl.endsWith('/')),
        initialConfig = initialConfig ??
            MsgServConfig(
              updatedAt: DateTime.fromMicrosecondsSinceEpoch(0).toUtc(),
              campaigns: [],
            );

  /// base path to the API endpoint.
  /// Must not end in '/'
  final String endpointUrl;
  final MsgServConfig initialConfig;

  /// Do not fetch configuration. This can be useful if you want to allow
  /// users to opt out of in app communications.
  final bool disableConfigFetch;

  /// How often the config should be reloaded from the server.
  /// While running. For the interval after a (restart) check
  /// [refetchIntervalCold].
  final Duration refetchInterval;

  /// How much time must have passed before fetching after a start of the app.
  final Duration refetchIntervalCold;

  /// PackageInfo used to identify the current app/version.
  /// If not defined flutter plugin `package_info` will be used.
  final Future<MsgServPackageInfo> Function()? packageInfo;

  final Client Function() httpClient;

  static Client createClient() => Client();

  Future<MsgServPackageInfo> getPackageInfo() async {
    if (packageInfo != null) {
      return await packageInfo!();
    }
    if (kIsWeb) {
      return const MsgServPackageInfo(
        packageName: 'design.codeux.diac.web',
        appName: 'Diac',
        version: '1.0.0',
        buildNumber: '0',
      );
    }
    return MsgServPackageInfo.fromPackageInfo(await PackageInfo.fromPlatform());
  }
}

class MsgServPackageInfo {
  const MsgServPackageInfo({
    required this.appName,
    required this.packageName,
    required this.version,
    required this.buildNumber,
  });

  MsgServPackageInfo.fromPackageInfo(PackageInfo pi)
      : this(
          appName: pi.appName,
          packageName: pi.packageName,
          version: pi.version,
          buildNumber: pi.buildNumber,
        );

  final String appName;
  final String packageName;
  final String version;
  final String buildNumber;
}
