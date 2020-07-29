// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: prefer_initializing_formals

import 'package:json_annotation/json_annotation.dart' as _i1;
import 'package:meta/meta.dart' as _i3;
import 'package:openapi_base/openapi_base.dart' as _i2;
part 'msgserv.openapi.g.dart';

@_i1.JsonSerializable()
class EventContext implements _i2.OpenApiContent {
  EventContext();

  factory EventContext.fromJson(Map<String, dynamic> jsonMap) =>
      _$EventContextFromJson(jsonMap)
        .._additionalProperties.addEntries(
            jsonMap.entries.where((e) => !const <String>{}.contains(e.key)));

  final Map<String, Object> _additionalProperties = <String, Object>{};

  Map<String, dynamic> toJson() =>
      Map.from(_additionalProperties)..addAll(_$EventContextToJson(this));
  @override
  String toString() => toJson().toString();
  void operator []=(String key, Object value) =>
      _additionalProperties[key] = value;
  Object operator [](String key) => _additionalProperties[key];
}

@_i1.JsonSerializable()
class Event implements _i2.OpenApiContent {
  Event({@_i3.required this.ts, @_i3.required this.context})
      : assert(ts != null),
        assert(context != null);

  factory Event.fromJson(Map<String, dynamic> jsonMap) =>
      _$EventFromJson(jsonMap);

  /// Timestamp of the event
  @_i1.JsonKey(name: 'ts')
  final DateTime ts;

  @_i1.JsonKey(name: 'context')
  final EventContext context;

  Map<String, dynamic> toJson() => _$EventToJson(this);
  @override
  String toString() => toJson().toString();
}

@_i1.JsonSerializable()
class CheckGetResponseBody200 implements _i2.OpenApiContent {
  CheckGetResponseBody200({this.dbVersion});

  factory CheckGetResponseBody200.fromJson(Map<String, dynamic> jsonMap) =>
      _$CheckGetResponseBody200FromJson(jsonMap);

  @_i1.JsonKey(name: 'dbVersion')
  final int dbVersion;

  Map<String, dynamic> toJson() => _$CheckGetResponseBody200ToJson(this);
  @override
  String toString() => toJson().toString();
}

class _CheckGetResponse200 extends CheckGetResponse
    implements _i2.OpenApiResponseBodyJson {
  /// /// Everything OK
  _CheckGetResponse200.response200(this.body)
      : status = 200,
        bodyJson = body.toJson();

  @override
  final int status;

  final CheckGetResponseBody200 body;

  @override
  final Map<String, dynamic> bodyJson;

  @override
  final _i2.OpenApiContentType contentType =
      _i2.OpenApiContentType.parse('application/json');

  @override
  Map<String, Object> propertiesToString() => {
        'status': status,
        'body': body,
        'bodyJson': bodyJson,
        'contentType': contentType
      };
}

abstract class CheckGetResponse extends _i2.OpenApiResponse
    implements _i2.HasSuccessResponse<CheckGetResponseBody200> {
  CheckGetResponse();

  /// /// Everything OK
  factory CheckGetResponse.response200(CheckGetResponseBody200 body) =>
      _CheckGetResponse200.response200(body);

  void map({@_i3.required _i2.ResponseMap<_CheckGetResponse200> on200}) {
    if (this is _CheckGetResponse200) {
      on200((this as _CheckGetResponse200));
    } else {
      throw StateError('Invalid instance type $this');
    }
  }

  /// status 200:  Everything OK
  @override
  CheckGetResponseBody200 requireSuccess() {
    if (this is _CheckGetResponse200) {
      return (this as _CheckGetResponse200).body;
    } else {
      throw StateError('Expected success response, but got $this');
    }
  }
}

class _EventPostResponse200 extends EventPostResponse {
  /// /// Configuration update
  _EventPostResponse200.response200() : status = 200;

  @override
  final int status;

  @override
  final _i2.OpenApiContentType contentType = null;

  @override
  Map<String, Object> propertiesToString() =>
      {'status': status, 'contentType': contentType};
}

abstract class EventPostResponse extends _i2.OpenApiResponse
    implements _i2.HasSuccessResponse<void> {
  EventPostResponse();

  /// /// Configuration update
  factory EventPostResponse.response200() =>
      _EventPostResponse200.response200();

  void map({@_i3.required _i2.ResponseMap<_EventPostResponse200> on200}) {
    if (this is _EventPostResponse200) {
      on200((this as _EventPostResponse200));
    } else {
      throw StateError('Invalid instance type $this');
    }
  }

  /// status 200:  Configuration update
  @override
  void requireSuccess() {
    if (this is _EventPostResponse200) {
      return;
    } else {
      throw StateError('Expected success response, but got $this');
    }
  }
}

abstract class MsgServBackend implements _i2.ApiEndpoint {
  /// Health check.
  /// Health check of endpoint data
  /// get: /check
  Future<CheckGetResponse> checkGet();

  /// Report event, or fetch config.
  /// post: /event
  Future<EventPostResponse> eventPost(Event body);
}

abstract class MsgServBackendClient implements _i2.OpenApiClient {
  factory MsgServBackendClient(
          Uri baseUri, _i2.OpenApiRequestSender requestSender) =>
      _MsgServBackendClientImpl._(baseUri, requestSender);

  /// Health check.
  /// Health check of endpoint data
  /// get: /check
  ///
  Future<CheckGetResponse> checkGet();

  /// Report event, or fetch config.
  /// post: /event
  ///
  Future<EventPostResponse> eventPost(Event body);
}

class _MsgServBackendClientImpl extends _i2.OpenApiClientBase
    implements MsgServBackendClient {
  _MsgServBackendClientImpl._(this.baseUri, this.requestSender);

  @override
  final Uri baseUri;

  @override
  final _i2.OpenApiRequestSender requestSender;

  /// Health check.
  /// Health check of endpoint data
  /// get: /check
  ///
  @override
  Future<CheckGetResponse> checkGet() async {
    final request = _i2.OpenApiClientRequest('get', '/check', []);
    return await sendRequest(request, {
      '200': (_i2.OpenApiClientResponse response) async =>
          _CheckGetResponse200.response200(CheckGetResponseBody200.fromJson(
              await response.responseBodyJson()))
    });
  }

  /// Report event, or fetch config.
  /// post: /event
  ///
  @override
  Future<EventPostResponse> eventPost(Event body) async {
    final request = _i2.OpenApiClientRequest('post', '/event', [
      _i2.SecurityRequirement(schemes: [
        _i2.SecurityRequirementScheme(
            scheme: SecuritySchemes.apiKey, scopes: [])
      ])
    ]);
    request.setHeader('content-type', 'application/json');
    request.setBody(_i2.OpenApiClientRequestBodyJson(body.toJson()));
    return await sendRequest(request, {
      '200': (_i2.OpenApiClientResponse response) async =>
          _EventPostResponse200.response200()
    });
  }
}

class MsgServBackendUrlResolve with _i2.OpenApiUrlEncodeMixin {
  /// Health check.
  /// Health check of endpoint data
  /// get: /check
  ///
  _i2.OpenApiClientRequest checkGet() {
    final request = _i2.OpenApiClientRequest('get', '/check', []);
    return request;
  }

  /// Report event, or fetch config.
  /// post: /event
  ///
  _i2.OpenApiClientRequest eventPost() {
    final request = _i2.OpenApiClientRequest('post', '/event', [
      _i2.SecurityRequirement(schemes: [
        _i2.SecurityRequirementScheme(
            scheme: SecuritySchemes.apiKey, scopes: [])
      ])
    ]);
    return request;
  }
}

class MsgServBackendRouter extends _i2.OpenApiServerRouterBase {
  MsgServBackendRouter(this.impl);

  final _i2.ApiEndpointProvider<MsgServBackend> impl;

  @override
  void configure() {
    addRoute('/check', 'get', (_i2.OpenApiRequest request) async {
      return await impl.invoke(
          request, (MsgServBackend impl) async => impl.checkGet());
    }, security: []);
    addRoute('/event', 'post', (_i2.OpenApiRequest request) async {
      return await impl.invoke(
          request,
          (MsgServBackend impl) async =>
              impl.eventPost(Event.fromJson(await request.readJsonBody())));
    }, security: [
      _i2.SecurityRequirement(schemes: [
        _i2.SecurityRequirementScheme(
            scheme: SecuritySchemes.apiKey, scopes: [])
      ])
    ]);
  }
}

class SecuritySchemes {
  static final apiKey = _i2.SecuritySchemeApiKey(
      name: 'X-API-KEY',
      readFromRequest: (_i2.OpenApiRequest request) =>
          request.headerParameter('X-API-KEY'),
      writeToRequest: (_i2.OpenApiClientRequest request, String value) =>
          request.addHeaderParameter('X-API-KEY', [value]));
}
