// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'msgserve_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MsgServData _$$_MsgServDataFromJson(Map<String, dynamic> json) =>
    _$_MsgServData(
      deviceId: json['deviceId'] as String,
      firstLaunch: DateTime.parse(json['firstLaunch'] as String),
      cachedImages: (json['cachedImages'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, e as String),
          ) ??
          {},
      seen: (json['seen'] as List<dynamic>)
          .map((e) => MsgServHistory.fromJson(e as Map<String, dynamic>))
          .toList(),
      lastConfigFetchedAt:
          DateTime.parse(json['lastConfigFetchedAt'] as String),
      lastConfig: json['lastConfig'] == null
          ? null
          : MsgServConfig.fromJson(json['lastConfig'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_MsgServDataToJson(_$_MsgServData instance) =>
    <String, dynamic>{
      'deviceId': instance.deviceId,
      'firstLaunch': instance.firstLaunch.toIso8601String(),
      'cachedImages': instance.cachedImages,
      'seen': instance.seen,
      'lastConfigFetchedAt': instance.lastConfigFetchedAt.toIso8601String(),
      'lastConfig': instance.lastConfig,
    };

_$_MsgServHistory _$$_MsgServHistoryFromJson(Map<String, dynamic> json) =>
    _$_MsgServHistory(
      campaignId: json['id'] as String,
      campaignKey: json['key'] as String,
      closedAt: json['closedAt'] == null
          ? null
          : DateTime.parse(json['closedAt'] as String),
      action: json['action'] as String?,
    );

Map<String, dynamic> _$$_MsgServHistoryToJson(_$_MsgServHistory instance) =>
    <String, dynamic>{
      'id': instance.campaignId,
      'key': instance.campaignKey,
      'closedAt': instance.closedAt?.toIso8601String(),
      'action': instance.action,
    };
