// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'msgserve_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MsgServeData _$$_MsgServeDataFromJson(Map<String, dynamic> json) =>
    _$_MsgServeData(
      deviceId: json['deviceId'] as String,
      firstLaunch: DateTime.parse(json['firstLaunch'] as String),
      cachedImages: (json['cachedImages'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, e as String),
          ) ??
          {},
      seen: (json['seen'] as List<dynamic>)
          .map((e) => MsgServeHistory.fromJson(e as Map<String, dynamic>))
          .toList(),
      lastConfigFetchedAt:
          DateTime.parse(json['lastConfigFetchedAt'] as String),
      lastConfig: json['lastConfig'] == null
          ? null
          : MsgServeConfig.fromJson(json['lastConfig'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_MsgServeDataToJson(_$_MsgServeData instance) =>
    <String, dynamic>{
      'deviceId': instance.deviceId,
      'firstLaunch': instance.firstLaunch.toIso8601String(),
      'cachedImages': instance.cachedImages,
      'seen': instance.seen,
      'lastConfigFetchedAt': instance.lastConfigFetchedAt.toIso8601String(),
      'lastConfig': instance.lastConfig,
    };

_$_MsgServeHistory _$$_MsgServeHistoryFromJson(Map<String, dynamic> json) =>
    _$_MsgServeHistory(
      campaignId: json['id'] as String,
      campaignKey: json['key'] as String,
      closedAt: json['closedAt'] == null
          ? null
          : DateTime.parse(json['closedAt'] as String),
      action: json['action'] as String?,
    );

Map<String, dynamic> _$$_MsgServeHistoryToJson(_$_MsgServeHistory instance) =>
    <String, dynamic>{
      'id': instance.campaignId,
      'key': instance.campaignKey,
      'closedAt': instance.closedAt?.toIso8601String(),
      'action': instance.action,
    };
