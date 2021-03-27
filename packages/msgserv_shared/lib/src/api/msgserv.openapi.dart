// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: prefer_initializing_formals

import 'package:json_annotation/json_annotation.dart' as _i1;
import 'package:meta/meta.dart' as _i2;
import 'package:openapi_base/openapi_base.dart';
part 'msgserv.openapi.g.dart';

@_i1.JsonSerializable()
class EventContext implements OpenApiContent {
  EventContext();

  factory EventContext.fromJson(Map<String, dynamic> jsonMap) =>
      _$EventContextFromJson(jsonMap)
        .._additionalProperties.addEntries(
            jsonMap.entries.where((e) => !const <String>{}.contains(e.key)) as Iterable<MapEntry<String, Object>>);

  final Map<String, Object> _additionalProperties = <String, Object>{};

  Map<String, dynamic> toJson() =>
      Map.from(_additionalProperties)..addAll(_$EventContextToJson(this));
  @override
  String toString() => toJson().toString();
  void operator []=(String key, Object value) =>
      _additionalProperties[key] = value;
  Object? operator [](String key) => _additionalProperties[key];
}

@_i1.JsonSerializable()
class Event implements OpenApiContent {
  Event({required this.ts, required this.context})
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
class CampaignState implements OpenApiContent {
  CampaignState();

  factory CampaignState.fromJson(Map<String, dynamic> jsonMap) =>
      _$CampaignStateFromJson(jsonMap)
        .._additionalProperties.addEntries(
            jsonMap.entries.where((e) => !const <String>{}.contains(e.key)) as Iterable<MapEntry<String, Object>>);

  final Map<String, Object> _additionalProperties = <String, Object>{};

  Map<String, dynamic> toJson() =>
      Map.from(_additionalProperties)..addAll(_$CampaignStateToJson(this));
  @override
  String toString() => toJson().toString();
  void operator []=(String key, Object value) =>
      _additionalProperties[key] = value;
  Object? operator [](String key) => _additionalProperties[key];
}

@_i1.JsonSerializable()
class Campaign implements OpenApiContent {
  Campaign({required this.state}) : assert(state != null);

  factory Campaign.fromJson(Map<String, dynamic> jsonMap) =>
      _$CampaignFromJson(jsonMap);

  @_i1.JsonKey(name: 'state')
  final CampaignState state;

  Map<String, dynamic> toJson() => _$CampaignToJson(this);
  @override
  String toString() => toJson().toString();
}

@_i1.JsonSerializable()
class MessageAction implements OpenApiContent {
  MessageAction(
      {required this.key,
      required this.label,
      required this.actionExpression})
      : assert(key != null),
        assert(label != null),
        assert(actionExpression != null);

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
class Message implements OpenApiContent {
  Message(
      {required this.uuid,
      required this.key,
      required this.body,
      required this.expression,
      this.campaign,
      required this.actions})
      : assert(uuid != null),
        assert(key != null),
        assert(body != null),
        assert(expression != null),
        assert(actions != null);

  factory Message.fromJson(Map<String, dynamic> jsonMap) =>
      _$MessageFromJson(jsonMap);

  /// Globally unique ID.
  @_i1.JsonKey(name: 'uuid')
  @ApiUuidJsonConverter()
  final ApiUuid uuid;

  /// Unique, user friendly key for this message.
  @_i1.JsonKey(name: 'key')
  final String key;

  @_i1.JsonKey(name: 'body')
  final String body;

  /// Boolean expression which evaluates whether this message should be shown.
  @_i1.JsonKey(name: 'expression')
  final String expression;

  @_i1.JsonKey(name: 'campaign')
  final Campaign? campaign;

  @_i1.JsonKey(name: 'actions')
  final List<MessageAction> actions;

  Map<String, dynamic> toJson() => _$MessageToJson(this);
  @override
  String toString() => toJson().toString();
}

@_i1.JsonSerializable()
class MessageBanner implements OpenApiContent, Message {
  MessageBanner(
      {required this.uuid,
      required this.key,
      required this.body,
      required this.expression,
      this.campaign,
      required this.actions,
      this.title})
      : assert(uuid != null),
        assert(key != null),
        assert(body != null),
        assert(expression != null),
        assert(actions != null);

  factory MessageBanner.fromJson(Map<String, dynamic> jsonMap) =>
      _$MessageBannerFromJson(jsonMap);

  /// Globally unique ID.
  @_i1.JsonKey(name: 'uuid')
  @override
  @ApiUuidJsonConverter()
  final ApiUuid uuid;

  /// Unique, user friendly key for this message.
  @_i1.JsonKey(name: 'key')
  @override
  final String key;

  @_i1.JsonKey(name: 'body')
  @override
  final String body;

  /// Boolean expression which evaluates whether this message should be shown.
  @_i1.JsonKey(name: 'expression')
  @override
  final String expression;

  @_i1.JsonKey(name: 'campaign')
  @override
  final Campaign? campaign;

  @_i1.JsonKey(name: 'actions')
  @override
  final List<MessageAction> actions;

  @_i1.JsonKey(name: 'title')
  final String? title;

  @override
  Map<String, dynamic> toJson() => _$MessageBannerToJson(this);
  @override
  String toString() => toJson().toString();
}

@_i1.JsonSerializable()
class MessageSurvey implements OpenApiContent, Message {
  MessageSurvey(
      {required this.uuid,
      required this.key,
      required this.body,
      required this.expression,
      this.campaign,
      required this.actions,
      this.question})
      : assert(uuid != null),
        assert(key != null),
        assert(body != null),
        assert(expression != null),
        assert(actions != null);

  factory MessageSurvey.fromJson(Map<String, dynamic> jsonMap) =>
      _$MessageSurveyFromJson(jsonMap);

  /// Globally unique ID.
  @_i1.JsonKey(name: 'uuid')
  @override
  @ApiUuidJsonConverter()
  final ApiUuid uuid;

  /// Unique, user friendly key for this message.
  @_i1.JsonKey(name: 'key')
  @override
  final String key;

  @_i1.JsonKey(name: 'body')
  @override
  final String body;

  /// Boolean expression which evaluates whether this message should be shown.
  @_i1.JsonKey(name: 'expression')
  @override
  final String expression;

  @_i1.JsonKey(name: 'campaign')
  @override
  final Campaign? campaign;

  @_i1.JsonKey(name: 'actions')
  @override
  final List<MessageAction> actions;

  @_i1.JsonKey(name: 'question')
  final String? question;

  @override
  Map<String, dynamic> toJson() => _$MessageSurveyToJson(this);
  @override
  String toString() => toJson().toString();
}

@_i1.JsonSerializable()
class MessageConfigMessages implements OpenApiContent {
  MessageConfigMessages({this.type, this.dialog, this.survey});

  factory MessageConfigMessages.fromJson(Map<String, dynamic> jsonMap) =>
      _$MessageConfigMessagesFromJson(jsonMap);

  @_i1.JsonKey(name: 'type')
  final String? type;

  @_i1.JsonKey(name: 'dialog')
  final MessageBanner? dialog;

  @_i1.JsonKey(name: 'survey')
  final MessageSurvey? survey;

  Map<String, dynamic> toJson() => _$MessageConfigMessagesToJson(this);
  @override
  String toString() => toJson().toString();
}

@_i1.JsonSerializable()
class MessageConfig implements OpenApiContent {
  MessageConfig({required this.messages}) : assert(messages != null);

  factory MessageConfig.fromJson(Map<String, dynamic> jsonMap) =>
      _$MessageConfigFromJson(jsonMap);

  @_i1.JsonKey(name: 'messages')
  final List<MessageConfigMessages> messages;

  Map<String, dynamic> toJson() => _$MessageConfigToJson(this);
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
  Map<String, Object> propertiesToString() => {
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

  final MessageConfig body;

  @override
  final Map<String, dynamic> bodyJson;

  @override
  final OpenApiContentType contentType =
      OpenApiContentType.parse('application/json');

  @override
  Map<String, Object> propertiesToString() => {
        'status': status,
        'body': body,
        'bodyJson': bodyJson,
        'contentType': contentType
      };
}

abstract class EventPostResponse extends OpenApiResponse
    implements HasSuccessResponse<MessageConfig> {
  EventPostResponse();

  /// Configuration update
  factory EventPostResponse.response200(MessageConfig body) =>
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
  MessageConfig requireSuccess() {
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
              MessageConfig.fromJson(await response.responseBodyJson()))
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