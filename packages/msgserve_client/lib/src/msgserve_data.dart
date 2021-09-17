import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:msgserve_client/src/dto/msgserve_dto.dart';
import 'package:simple_json_persistence/simple_json_persistence.dart';

part 'msgserve_data.freezed.dart';
part 'msgserve_data.g.dart';

@freezed
abstract class MsgServData with _$MsgServData implements HasToJson {
  const factory MsgServData({
    required String deviceId,
    required DateTime firstLaunch,
    @Default(<String, String>{}) Map<String, String> cachedImages,
    required List<MsgServHistory> seen,
    required DateTime lastConfigFetchedAt,
    MsgServConfig? lastConfig,
  }) = _MsgServData;

  factory MsgServData.fromJson(Map<String, dynamic> json) =>
      _$MsgServDataFromJson(json);
}

@freezed
abstract class MsgServHistory with _$MsgServHistory {
  const factory MsgServHistory({
    // ignore: invalid_annotation_target
    @JsonKey(name: 'id') required String campaignId,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'key') required String campaignKey,
    DateTime? closedAt,

    /// tapped action of that message.
    String? action,
  }) = _MsgServHistory;

  factory MsgServHistory.fromJson(Map<String, dynamic> json) =>
      _$MsgServHistoryFromJson(json);
}
