// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'msgserve.openapi.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Event _$EventFromJson(Map<String, dynamic> json) =>
    Event(ts: DateTime.parse(json['ts'] as String));

Map<String, dynamic> _$EventToJson(Event instance) => <String, dynamic>{
  'ts': instance.ts.toIso8601String(),
};

MsgServeAction _$MsgServeActionFromJson(Map<String, dynamic> json) =>
    MsgServeAction(key: json['key'] as String);

Map<String, dynamic> _$MsgServeActionToJson(MsgServeAction instance) =>
    <String, dynamic>{'key': instance.key};

MsgServeActionWithUrl _$MsgServeActionWithUrlFromJson(
  Map<String, dynamic> json,
) => MsgServeActionWithUrl(
  key: json['key'] as String,
  url: json['url'] as String?,
);

Map<String, dynamic> _$MsgServeActionWithUrlToJson(
  MsgServeActionWithUrl instance,
) => <String, dynamic>{'key': instance.key, 'url': ?instance.url};

MsgServeGraphic _$MsgServeGraphicFromJson(Map<String, dynamic> json) =>
    MsgServeGraphic(url: json['url'] as String);

Map<String, dynamic> _$MsgServeGraphicToJson(MsgServeGraphic instance) =>
    <String, dynamic>{'url': instance.url};

MsgServeInterstitialGraphic _$MsgServeInterstitialGraphicFromJson(
  Map<String, dynamic> json,
) => MsgServeInterstitialGraphic(
  url: json['url'] as String,
  fill: $enumDecode(_$MsgServeFillEnumMap, json['fill']),
);

Map<String, dynamic> _$MsgServeInterstitialGraphicToJson(
  MsgServeInterstitialGraphic instance,
) => <String, dynamic>{
  'url': instance.url,
  'fill': _$MsgServeFillEnumMap[instance.fill]!,
};

const _$MsgServeFillEnumMap = {
  MsgServeFill.contain: 'contain',
  MsgServeFill.cover: 'cover',
};

MsgServeInterstitialArtifact _$MsgServeInterstitialArtifactFromJson(
  Map<String, dynamic> json,
) => MsgServeInterstitialArtifact(
  url: json['url'] as String?,
  key: json['key'] as String,
  graphics: (json['graphics'] as List<dynamic>)
      .map(
        (e) => MsgServeInterstitialGraphic.fromJson(e as Map<String, dynamic>),
      )
      .toList(),
);

Map<String, dynamic> _$MsgServeInterstitialArtifactToJson(
  MsgServeInterstitialArtifact instance,
) => <String, dynamic>{
  'url': ?instance.url,
  'key': instance.key,
  'graphics': instance.graphics,
};

MsgServeBannerArtifact _$MsgServeBannerArtifactFromJson(
  Map<String, dynamic> json,
) => MsgServeBannerArtifact(
  url: json['url'] as String?,
  key: json['key'] as String,
  graphic: MsgServeGraphic.fromJson(json['graphic'] as Map<String, dynamic>),
);

Map<String, dynamic> _$MsgServeBannerArtifactToJson(
  MsgServeBannerArtifact instance,
) => <String, dynamic>{
  'url': ?instance.url,
  'key': instance.key,
  'graphic': instance.graphic,
};

MsgServeActionWithLabel _$MsgServeActionWithLabelFromJson(
  Map<String, dynamic> json,
) => MsgServeActionWithLabel(
  url: json['url'] as String?,
  key: json['key'] as String,
  label: json['label'] as String?,
);

Map<String, dynamic> _$MsgServeActionWithLabelToJson(
  MsgServeActionWithLabel instance,
) => <String, dynamic>{
  'url': ?instance.url,
  'key': instance.key,
  'label': ?instance.label,
};

MsgServeTextDialog _$MsgServeTextDialogFromJson(Map<String, dynamic> json) =>
    MsgServeTextDialog(
      title: json['title'] as String,
      body: json['body'] as String,
      actions: (json['actions'] as List<dynamic>)
          .map(
            (e) => MsgServeActionWithLabel.fromJson(e as Map<String, dynamic>),
          )
          .toList(),
    );

Map<String, dynamic> _$MsgServeTextDialogToJson(MsgServeTextDialog instance) =>
    <String, dynamic>{
      'title': instance.title,
      'body': instance.body,
      'actions': instance.actions,
    };

MsgServeCampaign _$MsgServeCampaignFromJson(
  Map<String, dynamic> json,
) => MsgServeCampaign(
  id: const ApiUuidJsonConverter().fromJson(json['id'] as String),
  key: json['key'] as String,
  interstitial: json['interstitial'] == null
      ? null
      : MsgServeInterstitialArtifact.fromJson(
          json['interstitial'] as Map<String, dynamic>,
        ),
  banner: json['banner'] == null
      ? null
      : MsgServeBannerArtifact.fromJson(json['banner'] as Map<String, dynamic>),
  textDialog: json['textDialog'] == null
      ? null
      : MsgServeTextDialog.fromJson(json['textDialog'] as Map<String, dynamic>),
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
      'interstitial': ?instance.interstitial,
      'banner': ?instance.banner,
      'textDialog': ?instance.textDialog,
      'filter': instance.filter,
      'trigger': ?instance.trigger,
      'dateStart': ?instance.dateStart?.toIso8601String(),
      'dateEnd': ?instance.dateEnd?.toIso8601String(),
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
  Map<String, dynamic> json,
) => CheckGetResponseBody200(dbVersion: (json['dbVersion'] as num?)?.toInt());

Map<String, dynamic> _$CheckGetResponseBody200ToJson(
  CheckGetResponseBody200 instance,
) => <String, dynamic>{'dbVersion': ?instance.dbVersion};
