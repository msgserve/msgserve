// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: prefer_initializing_formals

import 'package:json_annotation/json_annotation.dart' as _i1;
import 'package:openapi_base/openapi_base.dart';
part 'msgserve.openapi.g.dart';

@_i1.JsonSerializable()
class Event implements OpenApiContent {
  Event({required this.ts});

  factory Event.fromJson(Map<String, dynamic> jsonMap) =>
      _$EventFromJson(jsonMap);

  /// Timestamp of the event
  @_i1.JsonKey(name: 'ts')
  final DateTime ts;

  Map<String, dynamic> toJson() => _$EventToJson(this);
  @override
  String toString() => toJson().toString();
}

@_i1.JsonSerializable()
class MsgServeAction implements OpenApiContent {
  MsgServeAction({required this.key});

  factory MsgServeAction.fromJson(Map<String, dynamic> jsonMap) =>
      _$MsgServeActionFromJson(jsonMap);

  @_i1.JsonKey(name: 'key')
  final String key;

  Map<String, dynamic> toJson() => _$MsgServeActionToJson(this);
  @override
  String toString() => toJson().toString();
}

@_i1.JsonSerializable()
class MsgServeActionWithUrl implements OpenApiContent, MsgServeAction {
  MsgServeActionWithUrl({required this.key, this.url});

  factory MsgServeActionWithUrl.fromJson(Map<String, dynamic> jsonMap) =>
      _$MsgServeActionWithUrlFromJson(jsonMap);

  @_i1.JsonKey(name: 'key')
  @override
  final String key;

  @_i1.JsonKey(name: 'url')
  final String? url;

  @override
  Map<String, dynamic> toJson() => _$MsgServeActionWithUrlToJson(this);
  @override
  String toString() => toJson().toString();
}

@_i1.JsonSerializable()
class MsgServeGraphic implements OpenApiContent {
  MsgServeGraphic({required this.url});

  factory MsgServeGraphic.fromJson(Map<String, dynamic> jsonMap) =>
      _$MsgServeGraphicFromJson(jsonMap);

  @_i1.JsonKey(name: 'url')
  final String url;

  Map<String, dynamic> toJson() => _$MsgServeGraphicToJson(this);
  @override
  String toString() => toJson().toString();
}

enum MsgServeFill {
  @_i1.JsonValue('contain')
  contain,
  @_i1.JsonValue('cover')
  cover,
}

extension MsgServeFillExt on MsgServeFill {
  static final Map<String, MsgServeFill> _names = {
    'contain': MsgServeFill.contain,
    'cover': MsgServeFill.cover
  };
  static MsgServeFill fromName(String name) =>
      _names[name] ??
      _throwStateError('Invalid enum name: $name for MsgServeFill');
  String get name => toString().substring(13);
}

@_i1.JsonSerializable()
class MsgServeInterstitialGraphic implements OpenApiContent, MsgServeGraphic {
  MsgServeInterstitialGraphic({required this.url, required this.fill});

  factory MsgServeInterstitialGraphic.fromJson(Map<String, dynamic> jsonMap) =>
      _$MsgServeInterstitialGraphicFromJson(jsonMap);

  @_i1.JsonKey(name: 'url')
  @override
  final String url;

  @_i1.JsonKey(name: 'fill')
  final MsgServeFill fill;

  @override
  Map<String, dynamic> toJson() => _$MsgServeInterstitialGraphicToJson(this);
  @override
  String toString() => toJson().toString();
}

@_i1.JsonSerializable()
class MsgServeInterstitialArtifact
    implements OpenApiContent, MsgServeAction, MsgServeActionWithUrl {
  MsgServeInterstitialArtifact(
      {this.url,
      required this.key,
      required this.targetUrl,
      required this.graphics});

  factory MsgServeInterstitialArtifact.fromJson(Map<String, dynamic> jsonMap) =>
      _$MsgServeInterstitialArtifactFromJson(jsonMap);

  @_i1.JsonKey(name: 'url')
  @override
  final String? url;

  @_i1.JsonKey(name: 'key')
  @override
  final String key;

  @_i1.JsonKey(name: 'targetUrl')
  final String targetUrl;

  @_i1.JsonKey(name: 'graphics')
  final List<MsgServeInterstitialGraphic> graphics;

  @override
  Map<String, dynamic> toJson() => _$MsgServeInterstitialArtifactToJson(this);
  @override
  String toString() => toJson().toString();
}

@_i1.JsonSerializable()
class MsgServeCampaign implements OpenApiContent {
  MsgServeCampaign(
      {required this.id,
      required this.key,
      this.interstitial,
      required this.filter,
      this.trigger,
      this.dateStart,
      this.dateEnd});

  factory MsgServeCampaign.fromJson(Map<String, dynamic> jsonMap) =>
      _$MsgServeCampaignFromJson(jsonMap);

  /// Globally unique ID.
  @_i1.JsonKey(name: 'id')
  @ApiUuidJsonConverter()
  final ApiUuid id;

  /// Unique, user friendly key for this message.
  @_i1.JsonKey(name: 'key')
  final String key;

  @_i1.JsonKey(name: 'interstitial')
  final MsgServeInterstitialArtifact? interstitial;

  /// Boolean expression which evaluates whether this message should be shown.
  @_i1.JsonKey(name: 'filter')
  final String filter;

  /// Boolean expression which evaluates whether this message should be shown.
  @_i1.JsonKey(name: 'trigger')
  final String? trigger;

  @_i1.JsonKey(name: 'dateStart')
  final DateTime? dateStart;

  @_i1.JsonKey(name: 'dateEnd')
  final DateTime? dateEnd;

  Map<String, dynamic> toJson() => _$MsgServeCampaignToJson(this);
  @override
  String toString() => toJson().toString();
}

@_i1.JsonSerializable()
class MsgServeConfig implements OpenApiContent {
  MsgServeConfig({required this.updatedAt, required this.campaigns});

  factory MsgServeConfig.fromJson(Map<String, dynamic> jsonMap) =>
      _$MsgServeConfigFromJson(jsonMap);

  @_i1.JsonKey(name: 'updatedAt')
  final DateTime updatedAt;

  @_i1.JsonKey(name: 'campaigns')
  final List<MsgServeCampaign> campaigns;

  Map<String, dynamic> toJson() => _$MsgServeConfigToJson(this);
  @override
  String toString() => toJson().toString();
}

@_i1.JsonSerializable()
class MessageAction implements OpenApiContent {
  MessageAction(
      {required this.key, required this.label, required this.actionExpression});

  factory MessageAction.fromJson(Map<String, dynamic> jsonMap) =>
      _$MessageActionFromJson(jsonMap);

  @_i1.JsonKey(name: 'key')
  final String key;

  @_i1.JsonKey(name: 'label')
  final String label;

  /// Expression which is evaluated when the action is activted/pressed.
  @_i1.JsonKey(name: 'actionExpression')
  final String actionExpression;

  Map<String, dynamic> toJson() => _$MessageActionToJson(this);
  @override
  String toString() => toJson().toString();
}

@_i1.JsonSerializable()
class CheckGetResponseBody200 implements OpenApiContent {
  CheckGetResponseBody200({this.dbVersion});

  factory CheckGetResponseBody200.fromJson(Map<String, dynamic> jsonMap) =>
      _$CheckGetResponseBody200FromJson(jsonMap);

  @_i1.JsonKey(name: 'dbVersion')
  final int? dbVersion;

  Map<String, dynamic> toJson() => _$CheckGetResponseBody200ToJson(this);
  @override
  String toString() => toJson().toString();
}

class _CheckGetResponse200 extends CheckGetResponse
    implements OpenApiResponseBodyJson {
  /// Everything OK
  _CheckGetResponse200.response200(this.body)
      : status = 200,
        bodyJson = body.toJson();

  @override
  final int status;

  final CheckGetResponseBody200 body;

  @override
  final Map<String, dynamic> bodyJson;

  @override
  final OpenApiContentType contentType =
      OpenApiContentType.parse('application/json');

  @override
  Map<String, Object?> propertiesToString() => {
        'status': status,
        'body': body,
        'bodyJson': bodyJson,
        'contentType': contentType
      };
}

abstract class CheckGetResponse extends OpenApiResponse
    implements HasSuccessResponse<CheckGetResponseBody200> {
  CheckGetResponse();

  /// Everything OK
  factory CheckGetResponse.response200(CheckGetResponseBody200 body) =>
      _CheckGetResponse200.response200(body);

  void map({required ResponseMap<_CheckGetResponse200> on200}) {
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

class _EventPostResponse200 extends EventPostResponse
    implements OpenApiResponseBodyJson {
  /// Configuration update
  _EventPostResponse200.response200(this.body)
      : status = 200,
        bodyJson = body.toJson();

  @override
  final int status;

  final MsgServeConfig body;

  @override
  final Map<String, dynamic> bodyJson;

  @override
  final OpenApiContentType contentType =
      OpenApiContentType.parse('application/json');

  @override
  Map<String, Object?> propertiesToString() => {
        'status': status,
        'body': body,
        'bodyJson': bodyJson,
        'contentType': contentType
      };
}

abstract class EventPostResponse extends OpenApiResponse
    implements HasSuccessResponse<MsgServeConfig> {
  EventPostResponse();

  /// Configuration update
  factory EventPostResponse.response200(MsgServeConfig body) =>
      _EventPostResponse200.response200(body);

  void map({required ResponseMap<_EventPostResponse200> on200}) {
    if (this is _EventPostResponse200) {
      on200((this as _EventPostResponse200));
    } else {
      throw StateError('Invalid instance type $this');
    }
  }

  /// status 200:  Configuration update
  @override
  MsgServeConfig requireSuccess() {
    if (this is _EventPostResponse200) {
      return (this as _EventPostResponse200).body;
    } else {
      throw StateError('Expected success response, but got $this');
    }
  }
}

abstract class MsgServBackend implements ApiEndpoint {
  /// Health check.
  /// Health check of endpoint data
  /// get: /check
  Future<CheckGetResponse> checkGet();

  /// Report event, or fetch config.
  /// post: /event
  Future<EventPostResponse> eventPost(Event body);
}

abstract class MsgServBackendClient implements OpenApiClient {
  factory MsgServBackendClient(
          Uri baseUri, OpenApiRequestSender requestSender) =>
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

class _MsgServBackendClientImpl extends OpenApiClientBase
    implements MsgServBackendClient {
  _MsgServBackendClientImpl._(this.baseUri, this.requestSender);

  @override
  final Uri baseUri;

  @override
  final OpenApiRequestSender requestSender;

  /// Health check.
  /// Health check of endpoint data
  /// get: /check
  ///
  @override
  Future<CheckGetResponse> checkGet() async {
    final request = OpenApiClientRequest('get', '/check', []);
    return await sendRequest(request, {
      '200': (OpenApiClientResponse response) async =>
          _CheckGetResponse200.response200(CheckGetResponseBody200.fromJson(
              await response.responseBodyJson()))
    });
  }

  /// Report event, or fetch config.
  /// post: /event
  ///
  @override
  Future<EventPostResponse> eventPost(Event body) async {
    final request = OpenApiClientRequest('post', '/event', [
      SecurityRequirement(schemes: [
        SecurityRequirementScheme(scheme: SecuritySchemes.apiKey, scopes: [])
      ])
    ]);
    request.setHeader('content-type', 'application/json');
    request.setBody(OpenApiClientRequestBodyJson(body.toJson()));
    return await sendRequest(request, {
      '200': (OpenApiClientResponse response) async =>
          _EventPostResponse200.response200(
              MsgServeConfig.fromJson(await response.responseBodyJson()))
    });
  }
}

class MsgServBackendUrlResolve with OpenApiUrlEncodeMixin {
  /// Health check.
  /// Health check of endpoint data
  /// get: /check
  ///
  OpenApiClientRequest checkGet() {
    final request = OpenApiClientRequest('get', '/check', []);
    return request;
  }

  /// Report event, or fetch config.
  /// post: /event
  ///
  OpenApiClientRequest eventPost() {
    final request = OpenApiClientRequest('post', '/event', [
      SecurityRequirement(schemes: [
        SecurityRequirementScheme(scheme: SecuritySchemes.apiKey, scopes: [])
      ])
    ]);
    return request;
  }
}

class MsgServBackendRouter extends OpenApiServerRouterBase {
  MsgServBackendRouter(this.impl);

  final ApiEndpointProvider<MsgServBackend> impl;

  @override
  void configure() {
    addRoute('/check', 'get', (OpenApiRequest request) async {
      return await impl.invoke(
          request, (MsgServBackend impl) async => impl.checkGet());
    }, security: []);
    addRoute('/event', 'post', (OpenApiRequest request) async {
      return await impl.invoke(
          request,
          (MsgServBackend impl) async =>
              impl.eventPost(Event.fromJson(await request.readJsonBody())));
    }, security: [
      SecurityRequirement(schemes: [
        SecurityRequirementScheme(scheme: SecuritySchemes.apiKey, scopes: [])
      ])
    ]);
  }
}

class SecuritySchemes {
  static final apiKey = SecuritySchemeApiKey(
      name: 'X-API-KEY',
      readFromRequest: (OpenApiRequest request) =>
          request.headerParameter('X-API-KEY'),
      writeToRequest: (OpenApiClientRequest request, String value) =>
          request.addHeaderParameter('X-API-KEY', [value]));
}

T _throwStateError<T>(String message) => throw StateError(message);
