// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'msgserve.openapi.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Event _$EventFromJson(Map<String, dynamic> json) => Event(
      ts: DateTime.parse(json['ts'] as String),
    );

Map<String, dynamic> _$EventToJson(Event instance) => <String, dynamic>{
      'ts': instance.ts.toIso8601String(),
    };

MsgServeAction _$MsgServeActionFromJson(Map<String, dynamic> json) =>
    MsgServeAction(
      key: json['key'] as String,
    );

Map<String, dynamic> _$MsgServeActionToJson(MsgServeAction instance) =>
    <String, dynamic>{
      'key': instance.key,
    };

MsgServeActionWithUrl _$MsgServeActionWithUrlFromJson(
        Map<String, dynamic> json) =>
    MsgServeActionWithUrl(
      key: json['key'] as String,
      url: json['url'] as String?,
    );

Map<String, dynamic> _$MsgServeActionWithUrlToJson(
        MsgServeActionWithUrl instance) =>
    <String, dynamic>{
      'key': instance.key,
      'url': instance.url,
    };

MsgServeGraphic _$MsgServeGraphicFromJson(Map<String, dynamic> json) =>
    MsgServeGraphic(
      url: json['url'] as String,
    );

Map<String, dynamic> _$MsgServeGraphicToJson(MsgServeGraphic instance) =>
    <String, dynamic>{
      'url': instance.url,
    };

MsgServeInterstitialGraphic _$MsgServeInterstitialGraphicFromJson(
        Map<String, dynamic> json) =>
    MsgServeInterstitialGraphic(
      url: json['url'] as String,
      fill: _$enumDecode(_$MsgServeFillEnumMap, json['fill']),
    );

Map<String, dynamic> _$MsgServeInterstitialGraphicToJson(
        MsgServeInterstitialGraphic instance) =>
    <String, dynamic>{
      'url': instance.url,
      'fill': _$MsgServeFillEnumMap[instance.fill],
    };

K _$enumDecode<K, V>(
  Map<K, V> enumValues,
  Object? source, {
  K? unknownValue,
}) {
  if (source == null) {
    throw ArgumentError(
      'A value must be provided. Supported values: '
      '${enumValues.values.join(', ')}',
    );
  }

  return enumValues.entries.singleWhere(
    (e) => e.value == source,
    orElse: () {
      if (unknownValue == null) {
        throw ArgumentError(
          '`$source` is not one of the supported values: '
          '${enumValues.values.join(', ')}',
        );
      }
      return MapEntry(unknownValue, enumValues.values.first);
    },
  ).key;
}

const _$MsgServeFillEnumMap = {
  MsgServeFill.contain: 'contain',
  MsgServeFill.cover: 'cover',
};

MsgServeInterstitialArtifact _$MsgServeInterstitialArtifactFromJson(
        Map<String, dynamic> json) =>
    MsgServeInterstitialArtifact(
      url: json['url'] as String?,
      key: json['key'] as String,
      targetUrl: json['targetUrl'] as String,
      graphics: (json['graphics'] as List<dynamic>)
          .map((e) =>
              MsgServeInterstitialGraphic.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$MsgServeInterstitialArtifactToJson(
        MsgServeInterstitialArtifact instance) =>
    <String, dynamic>{
      'url': instance.url,
      'key': instance.key,
      'targetUrl': instance.targetUrl,
      'graphics': instance.graphics,
    };

MsgServeCampaign _$MsgServeCampaignFromJson(Map<String, dynamic> json) =>
    MsgServeCampaign(
      id: const ApiUuidJsonConverter().fromJson(json['id'] as String),
      key: json['key'] as String,
      interstitial: json['interstitial'] == null
          ? null
          : MsgServeInterstitialArtifact.fromJson(
              json['interstitial'] as Map<String, dynamic>),
      filter: json['filter'] as String,
      trigger: json['trigger'] as String?,
      dateStart: json['dateStart'] == null
          ? null
          : DateTime.parse(json['dateStart'] as String),
      dateEnd: json['dateEnd'] == null
          ? null
          : DateTime.parse(json['dateEnd'] as String),
    );

Map<String, dynamic> _$MsgServeCampaignToJson(MsgServeCampaign instance) =>
    <String, dynamic>{
      'id': const ApiUuidJsonConverter().toJson(instance.id),
      'key': instance.key,
      'interstitial': instance.interstitial,
      'filter': instance.filter,
      'trigger': instance.trigger,
      'dateStart': instance.dateStart?.toIso8601String(),
      'dateEnd': instance.dateEnd?.toIso8601String(),
    };

MsgServeConfig _$MsgServeConfigFromJson(Map<String, dynamic> json) =>
    MsgServeConfig(
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      campaigns: (json['campaigns'] as List<dynamic>)
          .map((e) => MsgServeCampaign.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$MsgServeConfigToJson(MsgServeConfig instance) =>
    <String, dynamic>{
      'updatedAt': instance.updatedAt.toIso8601String(),
      'campaigns': instance.campaigns,
    };

MessageAction _$MessageActionFromJson(Map<String, dynamic> json) =>
    MessageAction(
      key: json['key'] as String,
      label: json['label'] as String,
      actionExpression: json['actionExpression'] as String,
    );

Map<String, dynamic> _$MessageActionToJson(MessageAction instance) =>
    <String, dynamic>{
      'key': instance.key,
      'label': instance.label,
      'actionExpression': instance.actionExpression,
    };

CheckGetResponseBody200 _$CheckGetResponseBody200FromJson(
        Map<String, dynamic> json) =>
    CheckGetResponseBody200(
      dbVersion: json['dbVersion'] as int?,
    );

Map<String, dynamic> _$CheckGetResponseBody200ToJson(
        CheckGetResponseBody200 instance) =>
    <String, dynamic>{
      'dbVersion': instance.dbVersion,
    };
