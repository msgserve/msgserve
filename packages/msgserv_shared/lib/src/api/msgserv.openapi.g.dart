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

CheckGetResponseBody200 _$CheckGetResponseBody200FromJson(
    Map<String, dynamic> json) {
  return CheckGetResponseBody200(
    dbVersion: json['dbVersion'] as int,
  );
}

Map<String, dynamic> _$CheckGetResponseBody200ToJson(
        CheckGetResponseBody200 instance) =>
    <String, dynamic>{
      'dbVersion': instance.dbVersion,
    };
