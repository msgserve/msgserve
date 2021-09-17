// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'msgserve_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

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

MsgServeInterstitialArtifact _$MsgServeInterstitialArtifactFromJson(
        Map<String, dynamic> json) =>
    MsgServeInterstitialArtifact(
      graphics: (json['graphics'] as List<dynamic>)
          .map((e) =>
              MsgServeInterstitialGraphic.fromJson(e as Map<String, dynamic>))
          .toList(),
      targetUrl: json['targetUrl'] as String,
    );

Map<String, dynamic> _$MsgServeInterstitialArtifactToJson(
        MsgServeInterstitialArtifact instance) =>
    <String, dynamic>{
      'targetUrl': instance.targetUrl,
      'graphics': instance.graphics,
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

_$_MsgServCampaign _$$_MsgServCampaignFromJson(Map<String, dynamic> json) =>
    _$_MsgServCampaign(
      id: json['id'] as String,
      key: json['key'] as String,
      interstitial: json['interstitial'] == null
          ? null
          : MsgServeInterstitialArtifact.fromJson(
              json['interstitial'] as Map<String, dynamic>),
      dateStart: json['dateStart'] == null
          ? null
          : DateTime.parse(json['dateStart'] as String),
      dateEnd: json['dateEnd'] == null
          ? null
          : DateTime.parse(json['dateEnd'] as String),
      filter: json['filter'] as String?,
      trigger: json['trigger'] as String?,
    );

Map<String, dynamic> _$$_MsgServCampaignToJson(_$_MsgServCampaign instance) =>
    <String, dynamic>{
      'id': instance.id,
      'key': instance.key,
      'interstitial': instance.interstitial,
      'dateStart': instance.dateStart?.toIso8601String(),
      'dateEnd': instance.dateEnd?.toIso8601String(),
      'filter': instance.filter,
      'trigger': instance.trigger,
    };
