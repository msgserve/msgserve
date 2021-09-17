import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:msgserve_shared/msgserv_shared.dart';
import 'package:simple_json_persistence/simple_json_persistence.dart';

part 'msgserve_data.freezed.dart';
part 'msgserve_data.g.dart';

@freezed
abstract class MsgServeData with _$MsgServeData implements HasToJson {
  const factory MsgServeData({
    required String deviceId,
    required DateTime firstLaunch,
    @Default(<String, String>{}) Map<String, String> cachedImages,
    required List<MsgServeHistory> seen,
    required DateTime lastConfigFetchedAt,
    MsgServeConfig? lastConfig,
  }) = _MsgServeData;

  factory MsgServeData.fromJson(Map<String, dynamic> json) =>
      _$MsgServeDataFromJson(json);
}

@freezed
abstract class MsgServeHistory with _$MsgServeHistory {
  const factory MsgServeHistory({
    // ignore: invalid_annotation_target
    @JsonKey(name: 'id') required String campaignId,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'key') required String campaignKey,
    DateTime? closedAt,

    /// tapped action of that message.
    String? action,
  }) = _MsgServeHistory;

  factory MsgServeHistory.fromJson(Map<String, dynamic> json) =>
      _$MsgServeHistoryFromJson(json);
}
