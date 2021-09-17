import 'dart:convert';
import 'dart:io';

import 'package:clock/clock.dart';
import 'package:logging/logging.dart';
import 'package:logging_appenders/logging_appenders.dart';
import 'package:msgserve_shared/msgserv_shared.dart';
import 'package:openapi_base/openapi_base.dart';

final _logger = Logger('msgserve.msgserve_tool');

const jsonEncoder = JsonEncoder.withIndent('  ');

class MsgServeTool {
  MsgServeTool._() {
    PrintAppender.setupLogging();
  }

  static final _instance = MsgServeTool._();
  static MsgServeTool get instance => _instance;

  /// syncs the given messages into the given file.
  /// If the file does not yet exist, a new file will be created.
  ///
  /// It will take the given [messages] and replace the uuids with the uuids
  /// found in the [file] matched based on the [MsgServeCampaign.key].
  Future<void> syncMessageConfig(
      File file, List<MsgServeCampaign> messages) async {
    try {
      final config = await _readConfig(file) ??
          MsgServeConfig(updatedAt: clock.now().toUtc(), campaigns: []);
      final newMessages = messages
          .map((msg) => msg.copyWith(
              id: config.campaigns
                  .firstWhere((element) => element.key == msg.key,
                      orElse: () => msg)
                  .id))
          .toList();
      final MsgServeConfig? newConfig = config.copyWith(
        updatedAt: clock.now().toUtc(),
        campaigns: newMessages,
      );
      await file.parent.create(recursive: true);
      await file.writeAsString(jsonEncoder.convert(newConfig));
      _logger.info('Written to ${file.path}. ✅️');
    } catch (error, stackTrace) {
      _logger.severe('Error while syncing messages.', error, stackTrace);
    }
  }

  Future<MsgServeConfig?> _readConfig(File file) async {
    if (!file.existsSync()) {
      return null;
    }
    return MsgServeConfig.fromJson(
        json.decode(await file.readAsString()) as Map<String, dynamic>);
  }
}

extension on MsgServeConfig {
  MsgServeConfig copyWith({
    DateTime? updatedAt,
    List<MsgServeCampaign>? campaigns,
  }) {
    return MsgServeConfig(
      updatedAt: updatedAt ?? this.updatedAt,
      campaigns: campaigns ?? this.campaigns,
    );
  }
}

extension on MsgServeCampaign {
  MsgServeCampaign copyWith({required ApiUuid id}) {
    return MsgServeCampaign(
      id: id,
      key: key,
      filter: filter,
      interstitial: interstitial,
      trigger: trigger,
      dateStart: dateStart,
      dateEnd: dateEnd,
    );
  }
}
