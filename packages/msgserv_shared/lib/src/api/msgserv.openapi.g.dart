// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'msgserv.openapi.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EventContext _$EventContextFromJson(Map<String, dynamic> json) {
  return EventContext();
}

Map<String, dynamic> _$EventContextToJson(EventContext instance) =>
    <String, dynamic>{};

Event _$EventFromJson(Map<String, dynamic> json) {
  return Event(
    ts: json['ts'] == null ? null : DateTime.parse(json['ts'] as String),
    context: json['context'] == null
        ? null
        : EventContext.fromJson(json['context'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$EventToJson(Event instance) => <String, dynamic>{
      'ts': instance.ts?.toIso8601String(),
      'context': instance.context,
    };

CampaignState _$CampaignStateFromJson(Map<String, dynamic> json) {
  return CampaignState();
}

Map<String, dynamic> _$CampaignStateToJson(CampaignState instance) =>
    <String, dynamic>{};

Campaign _$CampaignFromJson(Map<String, dynamic> json) {
  return Campaign(
    state: json['state'] == null
        ? null
        : CampaignState.fromJson(json['state'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$CampaignToJson(Campaign instance) => <String, dynamic>{
      'state': instance.state,
    };

MessageAction _$MessageActionFromJson(Map<String, dynamic> json) {
  return MessageAction(
    key: json['key'] as String,
    label: json['label'] as String,
    actionExpression: json['actionExpression'] as String,
  );
}

Map<String, dynamic> _$MessageActionToJson(MessageAction instance) =>
    <String, dynamic>{
      'key': instance.key,
      'label': instance.label,
      'actionExpression': instance.actionExpression,
    };

Message _$MessageFromJson(Map<String, dynamic> json) {
  return Message(
    uuid: const ApiUuidJsonConverter().fromJson(json['uuid'] as String),
    key: json['key'] as String,
    body: json['body'] as String,
    expression: json['expression'] as String,
    campaign: json['campaign'] == null
        ? null
        : Campaign.fromJson(json['campaign'] as Map<String, dynamic>),
    (actions: (json['actions'] as List?)
        ?.map((e) => e == null
            ? null
            : MessageAction.fromJson(e as Map<String, dynamic>))
        ?.toList())!,
  );
}

Map<String, dynamic> _$MessageToJson(Message instance) => <String, dynamic>{
      'uuid': const ApiUuidJsonConverter().toJson(instance.uuid),
      'key': instance.key,
      'body': instance.body,
      'expression': instance.expression,
      'campaign': instance.campaign,
      'actions': instance.actions,
    };

MessageBanner _$MessageBannerFromJson(Map<String, dynamic> json) {
  return MessageBanner(
    uuid: const ApiUuidJsonConverter().fromJson(json['uuid'] as String),
    key: json['key'] as String,
    body: json['body'] as String,
    expression: json['expression'] as String,
    campaign: json['campaign'] == null
        ? null
        : Campaign.fromJson(json['campaign'] as Map<String, dynamic>),
    (actions: (json['actions'] as List?)
        ?.map((e) => e == null
            ? null
            : MessageAction.fromJson(e as Map<String, dynamic>))
        ?.toList())!,
    title: json['title'] as String?,
  );
}

Map<String, dynamic> _$MessageBannerToJson(MessageBanner instance) =>
    <String, dynamic>{
      'uuid': const ApiUuidJsonConverter().toJson(instance.uuid),
      'key': instance.key,
      'body': instance.body,
      'expression': instance.expression,
      'campaign': instance.campaign,
      'actions': instance.actions,
      'title': instance.title,
    };

MessageSurvey _$MessageSurveyFromJson(Map<String, dynamic> json) {
  return MessageSurvey(
    uuid: const ApiUuidJsonConverter().fromJson(json['uuid'] as String),
    key: json['key'] as String,
    body: json['body'] as String,
    expression: json['expression'] as String,
    campaign: json['campaign'] == null
        ? null
        : Campaign.fromJson(json['campaign'] as Map<String, dynamic>),
    (actions: (json['actions'] as List?)
        ?.map((e) => e == null
            ? null
            : MessageAction.fromJson(e as Map<String, dynamic>))
        ?.toList())!,
    question: json['question'] as String?,
  );
}

Map<String, dynamic> _$MessageSurveyToJson(MessageSurvey instance) =>
    <String, dynamic>{
      'uuid': const ApiUuidJsonConverter().toJson(instance.uuid),
      'key': instance.key,
      'body': instance.body,
      'expression': instance.expression,
      'campaign': instance.campaign,
      'actions': instance.actions,
      'question': instance.question,
    };

MessageConfigMessages _$MessageConfigMessagesFromJson(
    Map<String, dynamic> json) {
  return MessageConfigMessages(
    type: json['type'] as String?,
    dialog: json['dialog'] == null
        ? null
        : MessageBanner.fromJson(json['dialog'] as Map<String, dynamic>),
    survey: json['survey'] == null
        ? null
        : MessageSurvey.fromJson(json['survey'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$MessageConfigMessagesToJson(
        MessageConfigMessages instance) =>
    <String, dynamic>{
      'type': instance.type,
      'dialog': instance.dialog,
      'survey': instance.survey,
    };

MessageConfig _$MessageConfigFromJson(Map<String, dynamic> json) {
  return MessageConfig(
    (messages: (json['messages'] as List?)
        ?.map((e) => e == null
            ? null
            : MessageConfigMessages.fromJson(e as Map<String, dynamic>))
        ?.toList())!,
  );
}

Map<String, dynamic> _$MessageConfigToJson(MessageConfig instance) =>
    <String, dynamic>{
      'messages': instance.messages,
    };

CheckGetResponseBody200 _$CheckGetResponseBody200FromJson(
    Map<String, dynamic> json) {
  return CheckGetResponseBody200(
    dbVersion: json['dbVersion'] as int?,
  );
}

Map<String, dynamic> _$CheckGetResponseBody200ToJson(
        CheckGetResponseBody200 instance) =>
    <String, dynamic>{
      'dbVersion': instance.dbVersion,
    };
