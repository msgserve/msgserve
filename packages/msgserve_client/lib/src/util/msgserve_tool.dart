import 'dart:convert';
import 'dart:io';

import 'package:clock/clock.dart';
import 'package:logging/logging.dart';
import 'package:logging_appenders/logging_appenders.dart';
import 'package:msgserve_client/src/dto/msgserve_dto.dart';

final _logger = Logger('diac.diac_tool');

const jsonEncoder = JsonEncoder.withIndent('  ');

class MsgServTool {
  MsgServTool._() {
    PrintAppender.setupLogging();
  }

  static final _instance = MsgServTool._();
  static MsgServTool get instance => _instance;

  /// syncs the given messages into the given file.
  /// If the file does not yet exist, a new file will be created.
  ///
  /// It will take the given [messages] and replace the uuids with the uuids
  /// found in the [file] matched based on the [MsgServCampaign.key].
  Future<void> syncMessageConfig(
      File file, List<MsgServCampaign> messages) async {
    try {
      final config = await _readConfig(file) ??
          MsgServConfig(updatedAt: clock.now().toUtc(), campaigns: []);
      final newMessages = messages
          .map((msg) => msg.copyWith(
              id: config.campaigns
                  .firstWhere((element) => element.key == msg.key,
                      orElse: () => msg)
                  .id))
          .toList();
      final MsgServConfig? newConfig = config.copyWith(
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

  Future<MsgServConfig?> _readConfig(File file) async {
    if (!file.existsSync()) {
      return null;
    }
    return MsgServConfig.fromJson(
        json.decode(await file.readAsString()) as Map<String, dynamic>);
  }
}
