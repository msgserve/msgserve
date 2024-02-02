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
    MsgServeActionWithUrl instance) {
  final val = <String, dynamic>{
    'key': instance.key,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('url', instance.url);
  return val;
}

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
      fill: $enumDecode(_$MsgServeFillEnumMap, json['fill']),
    );

Map<String, dynamic> _$MsgServeInterstitialGraphicToJson(
        MsgServeInterstitialGraphic instance) =>
    <String, dynamic>{
      'url': instance.url,
      'fill': _$MsgServeFillEnumMap[instance.fill]!,
    };

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
    MsgServeInterstitialArtifact instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('url', instance.url);
  val['key'] = instance.key;
  val['targetUrl'] = instance.targetUrl;
  val['graphics'] = instance.graphics;
  return val;
}

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

Map<String, dynamic> _$MsgServeCampaignToJson(MsgServeCampaign instance) {
  final val = <String, dynamic>{
    'id': const ApiUuidJsonConverter().toJson(instance.id),
    'key': instance.key,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('interstitial', instance.interstitial);
  val['filter'] = instance.filter;
  writeNotNull('trigger', instance.trigger);
  writeNotNull('dateStart', instance.dateStart?.toIso8601String());
  writeNotNull('dateEnd', instance.dateEnd?.toIso8601String());
  return val;
}

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
    CheckGetResponseBody200 instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('dbVersion', instance.dbVersion);
  return val;
}
