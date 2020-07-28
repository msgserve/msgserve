// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'msgserv.openapi.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RegisterRequest _$RegisterRequestFromJson(Map<String, dynamic> json) {
  return RegisterRequest(
    email: json['email'] as String,
  );
}

Map<String, dynamic> _$RegisterRequestToJson(RegisterRequest instance) =>
    <String, dynamic>{
      'email': instance.email,
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
