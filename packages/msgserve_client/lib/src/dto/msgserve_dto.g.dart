// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'msgserve_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MsgServConfig _$MsgServConfigFromJson(Map<String, dynamic> json) =>
    MsgServConfig(
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      campaigns: (json['campaigns'] as List<dynamic>)
          .map((e) => MsgServCampaign.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$MsgServConfigToJson(MsgServConfig instance) =>
    <String, dynamic>{
      'updatedAt': instance.updatedAt.toIso8601String(),
      'campaigns': instance.campaigns,
    };

MsgServInterstitialArtifact _$MsgServInterstitialArtifactFromJson(
        Map<String, dynamic> json) =>
    MsgServInterstitialArtifact(
      graphics: (json['graphics'] as List<dynamic>)
          .map((e) =>
              MsgServInterstitialGraphic.fromJson(e as Map<String, dynamic>))
          .toList(),
      targetUrl: json['targetUrl'] as String,
    );

Map<String, dynamic> _$MsgServInterstitialArtifactToJson(
        MsgServInterstitialArtifact instance) =>
    <String, dynamic>{
      'targetUrl': instance.targetUrl,
      'graphics': instance.graphics,
    };

MsgServInterstitialGraphic _$MsgServInterstitialGraphicFromJson(
        Map<String, dynamic> json) =>
    MsgServInterstitialGraphic(
      url: json['url'] as String,
      fill: _$enumDecode(_$MsgServFillEnumMap, json['fill']),
    );

Map<String, dynamic> _$MsgServInterstitialGraphicToJson(
        MsgServInterstitialGraphic instance) =>
    <String, dynamic>{
      'url': instance.url,
      'fill': _$MsgServFillEnumMap[instance.fill],
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

const _$MsgServFillEnumMap = {
  MsgServFill.contain: 'contain',
  MsgServFill.cover: 'cover',
};

_$_MsgServCampaign _$$_MsgServCampaignFromJson(Map<String, dynamic> json) =>
    _$_MsgServCampaign(
      id: json['id'] as String,
      key: json['key'] as String,
      interstitial: json['interstitial'] == null
          ? null
          : MsgServInterstitialArtifact.fromJson(
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
