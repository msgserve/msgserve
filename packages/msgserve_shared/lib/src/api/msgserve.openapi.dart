// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: prefer_initializing_formals, library_private_types_in_public_api, annotate_overrides

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:openapi_base/openapi_base.dart';
part 'msgserve.openapi.g.dart';

@JsonSerializable()
@ApiUuidJsonConverter()
class Event implements OpenApiContent {
  const Event({required this.ts});

  factory Event.fromJson(Map<String, dynamic> jsonMap) =>
      _$EventFromJson(jsonMap);

  /// Timestamp of the event
  @JsonKey(
    name: 'ts',
    includeIfNull: false,
  )
  final DateTime ts;

  Map<String, dynamic> toJson() => _$EventToJson(this);

  @override
  String toString() => toJson().toString();
}

@JsonSerializable()
@ApiUuidJsonConverter()
class MsgServeAction implements OpenApiContent {
  const MsgServeAction({required this.key});

  factory MsgServeAction.fromJson(Map<String, dynamic> jsonMap) =>
      _$MsgServeActionFromJson(jsonMap);

  /// HP (2024-11-30): imho this is only used for analytics/tracking.
  @JsonKey(
    name: 'key',
    includeIfNull: false,
  )
  final String key;

  Map<String, dynamic> toJson() => _$MsgServeActionToJson(this);

  @override
  String toString() => toJson().toString();
}

@JsonSerializable()
@ApiUuidJsonConverter()
class MsgServeActionWithUrl implements OpenApiContent, MsgServeAction {
  const MsgServeActionWithUrl({
    required this.key,
    this.url,
  });

  factory MsgServeActionWithUrl.fromJson(Map<String, dynamic> jsonMap) =>
      _$MsgServeActionWithUrlFromJson(jsonMap);

  /// HP (2024-11-30): imho this is only used for analytics/tracking.
  @JsonKey(
    name: 'key',
    includeIfNull: false,
  )
  @override
  final String key;

  @JsonKey(
    name: 'url',
    includeIfNull: false,
  )
  final String? url;

  @override
  Map<String, dynamic> toJson() => _$MsgServeActionWithUrlToJson(this);

  @override
  String toString() => toJson().toString();
}

@JsonSerializable()
@ApiUuidJsonConverter()
class MsgServeGraphic implements OpenApiContent {
  const MsgServeGraphic({required this.url});

  factory MsgServeGraphic.fromJson(Map<String, dynamic> jsonMap) =>
      _$MsgServeGraphicFromJson(jsonMap);

  @JsonKey(
    name: 'url',
    includeIfNull: false,
  )
  final String url;

  Map<String, dynamic> toJson() => _$MsgServeGraphicToJson(this);

  @override
  String toString() => toJson().toString();
}

enum MsgServeFill {
  @JsonValue('contain')
  contain,
  @JsonValue('cover')
  cover,
}

extension MsgServeFillExt on MsgServeFill {
  static final Map<String, MsgServeFill> _names = {
    'contain': MsgServeFill.contain,
    'cover': MsgServeFill.cover,
  };
  static MsgServeFill fromName(String name) =>
      _names[name] ??
      _throwStateError('Invalid enum name: $name for MsgServeFill');
  String get name => toString().substring(13);
}

@JsonSerializable()
@ApiUuidJsonConverter()
class MsgServeInterstitialGraphic implements OpenApiContent, MsgServeGraphic {
  const MsgServeInterstitialGraphic({
    required this.url,
    required this.fill,
  });

  factory MsgServeInterstitialGraphic.fromJson(Map<String, dynamic> jsonMap) =>
      _$MsgServeInterstitialGraphicFromJson(jsonMap);

  @JsonKey(
    name: 'url',
    includeIfNull: false,
  )
  @override
  final String url;

  @JsonKey(
    name: 'fill',
    includeIfNull: false,
  )
  final MsgServeFill fill;

  @override
  Map<String, dynamic> toJson() => _$MsgServeInterstitialGraphicToJson(this);

  @override
  String toString() => toJson().toString();
}

@JsonSerializable()
@ApiUuidJsonConverter()
class MsgServeInterstitialArtifact
    implements OpenApiContent, MsgServeAction, MsgServeActionWithUrl {
  const MsgServeInterstitialArtifact({
    this.url,
    required this.key,
    required this.graphics,
  });

  factory MsgServeInterstitialArtifact.fromJson(Map<String, dynamic> jsonMap) =>
      _$MsgServeInterstitialArtifactFromJson(jsonMap);

  @JsonKey(
    name: 'url',
    includeIfNull: false,
  )
  @override
  final String? url;

  /// HP (2024-11-30): imho this is only used for analytics/tracking.
  @JsonKey(
    name: 'key',
    includeIfNull: false,
  )
  @override
  final String key;

  @JsonKey(
    name: 'graphics',
    includeIfNull: false,
  )
  final List<MsgServeInterstitialGraphic> graphics;

  @override
  Map<String, dynamic> toJson() => _$MsgServeInterstitialArtifactToJson(this);

  @override
  String toString() => toJson().toString();
}

@JsonSerializable()
@ApiUuidJsonConverter()
class MsgServeBannerArtifact
    implements OpenApiContent, MsgServeAction, MsgServeActionWithUrl {
  const MsgServeBannerArtifact({
    this.url,
    required this.key,
    required this.graphic,
  });

  factory MsgServeBannerArtifact.fromJson(Map<String, dynamic> jsonMap) =>
      _$MsgServeBannerArtifactFromJson(jsonMap);

  @JsonKey(
    name: 'url',
    includeIfNull: false,
  )
  @override
  final String? url;

  /// HP (2024-11-30): imho this is only used for analytics/tracking.
  @JsonKey(
    name: 'key',
    includeIfNull: false,
  )
  @override
  final String key;

  @JsonKey(
    name: 'graphic',
    includeIfNull: false,
  )
  final MsgServeGraphic graphic;

  @override
  Map<String, dynamic> toJson() => _$MsgServeBannerArtifactToJson(this);

  @override
  String toString() => toJson().toString();
}

@JsonSerializable()
@ApiUuidJsonConverter()
class MsgServeCampaign implements OpenApiContent {
  const MsgServeCampaign({
    required this.id,
    required this.key,
    this.interstitial,
    this.banner,
    required this.filter,
    this.trigger,
    this.dateStart,
    this.dateEnd,
  });

  factory MsgServeCampaign.fromJson(Map<String, dynamic> jsonMap) =>
      _$MsgServeCampaignFromJson(jsonMap);

  /// Globally unique ID.
  @JsonKey(
    name: 'id',
    includeIfNull: false,
  )
  @ApiUuidJsonConverter()
  final ApiUuid id;

  /// Unique, user friendly key for this message.
  @JsonKey(
    name: 'key',
    includeIfNull: false,
  )
  final String key;

  @JsonKey(
    name: 'interstitial',
    includeIfNull: false,
  )
  final MsgServeInterstitialArtifact? interstitial;

  @JsonKey(
    name: 'banner',
    includeIfNull: false,
  )
  final MsgServeBannerArtifact? banner;

  /// Boolean expression which evaluates whether this message should be shown.
  @JsonKey(
    name: 'filter',
    includeIfNull: false,
  )
  final String filter;

  /// Boolean expression which evaluates whether this message should be shown.
  @JsonKey(
    name: 'trigger',
    includeIfNull: false,
  )
  final String? trigger;

  @JsonKey(
    name: 'dateStart',
    includeIfNull: false,
  )
  final DateTime? dateStart;

  @JsonKey(
    name: 'dateEnd',
    includeIfNull: false,
  )
  final DateTime? dateEnd;

  Map<String, dynamic> toJson() => _$MsgServeCampaignToJson(this);

  @override
  String toString() => toJson().toString();
}

@JsonSerializable()
@ApiUuidJsonConverter()
class MsgServeConfig implements OpenApiContent {
  const MsgServeConfig({
    required this.updatedAt,
    required this.campaigns,
  });

  factory MsgServeConfig.fromJson(Map<String, dynamic> jsonMap) =>
      _$MsgServeConfigFromJson(jsonMap);

  @JsonKey(
    name: 'updatedAt',
    includeIfNull: false,
  )
  final DateTime updatedAt;

  @JsonKey(
    name: 'campaigns',
    includeIfNull: false,
  )
  final List<MsgServeCampaign> campaigns;

  Map<String, dynamic> toJson() => _$MsgServeConfigToJson(this);

  @override
  String toString() => toJson().toString();
}

@JsonSerializable()
@ApiUuidJsonConverter()
class MessageAction implements OpenApiContent {
  const MessageAction({
    required this.key,
    required this.label,
    required this.actionExpression,
  });

  factory MessageAction.fromJson(Map<String, dynamic> jsonMap) =>
      _$MessageActionFromJson(jsonMap);

  @JsonKey(
    name: 'key',
    includeIfNull: false,
  )
  final String key;

  @JsonKey(
    name: 'label',
    includeIfNull: false,
  )
  final String label;

  /// Expression which is evaluated when the action is activted/pressed.
  @JsonKey(
    name: 'actionExpression',
    includeIfNull: false,
  )
  final String actionExpression;

  Map<String, dynamic> toJson() => _$MessageActionToJson(this);

  @override
  String toString() => toJson().toString();
}

@JsonSerializable()
@ApiUuidJsonConverter()
class CheckGetResponseBody200 implements OpenApiContent {
  const CheckGetResponseBody200({this.dbVersion});

  factory CheckGetResponseBody200.fromJson(Map<String, dynamic> jsonMap) =>
      _$CheckGetResponseBody200FromJson(jsonMap);

  @JsonKey(
    name: 'dbVersion',
    includeIfNull: false,
  )
  final int? dbVersion;

  Map<String, dynamic> toJson() => _$CheckGetResponseBody200ToJson(this);

  @override
  String toString() => toJson().toString();
}

class CheckGetResponse200 extends CheckGetResponse
    implements OpenApiResponseBodyJson {
  /// Everything OK
  CheckGetResponse200.response200(this.body)
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
        'contentType': contentType,
      };
}

sealed class CheckGetResponse extends OpenApiResponse
    implements HasSuccessResponse<CheckGetResponseBody200> {
  CheckGetResponse();

  /// Everything OK
  factory CheckGetResponse.response200(CheckGetResponseBody200 body) =>
      CheckGetResponse200.response200(body);

  R map<R>({
    required ResponseMap<CheckGetResponse200, R> on200,
    ResponseMap<CheckGetResponse, R>? onElse,
  }) {
    if (this is CheckGetResponse200) {
      return on200((this as CheckGetResponse200));
    } else if (onElse != null) {
      return onElse(this);
    } else {
      throw StateError('Invalid instance of type $this');
    }
  }

  /// status 200:  Everything OK
  @override
  CheckGetResponseBody200 requireSuccess() {
    if (this is CheckGetResponse200) {
      return (this as CheckGetResponse200).body;
    } else {
      throw StateError('Expected success response, but got $this');
    }
  }
}

class EventPostResponse200 extends EventPostResponse
    implements OpenApiResponseBodyJson {
  /// Configuration update
  EventPostResponse200.response200(this.body)
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
        'contentType': contentType,
      };
}

sealed class EventPostResponse extends OpenApiResponse
    implements HasSuccessResponse<MsgServeConfig> {
  EventPostResponse();

  /// Configuration update
  factory EventPostResponse.response200(MsgServeConfig body) =>
      EventPostResponse200.response200(body);

  R map<R>({
    required ResponseMap<EventPostResponse200, R> on200,
    ResponseMap<EventPostResponse, R>? onElse,
  }) {
    if (this is EventPostResponse200) {
      return on200((this as EventPostResponse200));
    } else if (onElse != null) {
      return onElse(this);
    } else {
      throw StateError('Invalid instance of type $this');
    }
  }

  /// status 200:  Configuration update
  @override
  MsgServeConfig requireSuccess() {
    if (this is EventPostResponse200) {
      return (this as EventPostResponse200).body;
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
    Uri baseUri,
    OpenApiRequestSender requestSender,
  ) =>
      _MsgServBackendClientImpl._(
        baseUri,
        requestSender,
      );

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
  _MsgServBackendClientImpl._(
    this.baseUri,
    this.requestSender,
  );

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
    final request = OpenApiClientRequest(
      'get',
      '/check',
      [],
    );
    return await sendRequest(
      request,
      {
        '200': (OpenApiClientResponse response) async =>
            CheckGetResponse200.response200(CheckGetResponseBody200.fromJson(
                await response.responseBodyJson()))
      },
    );
  }

  /// Report event, or fetch config.
  /// post: /event
  ///
  @override
  Future<EventPostResponse> eventPost(Event body) async {
    final request = OpenApiClientRequest(
      'post',
      '/event',
      [
        SecurityRequirement(schemes: [
          SecurityRequirementScheme(
            scheme: SecuritySchemes.apiKey,
            scopes: [],
          )
        ])
      ],
    );
    request.setHeader(
      'content-type',
      'application/json',
    );
    request.setBody(OpenApiClientRequestBodyJson(body.toJson()));
    return await sendRequest(
      request,
      {
        '200': (OpenApiClientResponse response) async =>
            EventPostResponse200.response200(
                MsgServeConfig.fromJson(await response.responseBodyJson()))
      },
    );
  }
}

class MsgServBackendUrlResolve with OpenApiUrlEncodeMixin {
  /// Health check.
  /// Health check of endpoint data
  /// get: /check
  ///
  OpenApiClientRequest checkGet() {
    final request = OpenApiClientRequest(
      'get',
      '/check',
      [],
    );
    return request;
  }

  /// Report event, or fetch config.
  /// post: /event
  ///
  OpenApiClientRequest eventPost() {
    final request = OpenApiClientRequest(
      'post',
      '/event',
      [
        SecurityRequirement(schemes: [
          SecurityRequirementScheme(
            scheme: SecuritySchemes.apiKey,
            scopes: [],
          )
        ])
      ],
    );
    return request;
  }
}

class MsgServBackendRouter extends OpenApiServerRouterBase {
  MsgServBackendRouter(this.impl);

  final ApiEndpointProvider<MsgServBackend> impl;

  @override
  void configure() {
    addRoute(
      '/check',
      'get',
      (OpenApiRequest request) async {
        return await impl.invoke(
          request,
          (MsgServBackend impl) async => impl.checkGet(),
        );
      },
      security: [],
    );
    addRoute(
      '/event',
      'post',
      (OpenApiRequest request) async {
        return await impl.invoke(
          request,
          (MsgServBackend impl) async =>
              impl.eventPost(Event.fromJson(await request.readJsonBody())),
        );
      },
      security: [
        SecurityRequirement(schemes: [
          SecurityRequirementScheme(
            scheme: SecuritySchemes.apiKey,
            scopes: [],
          )
        ])
      ],
    );
  }
}

class SecuritySchemes {
  static final apiKey = SecuritySchemeApiKey(
    name: 'X-API-KEY',
    readFromRequest: (OpenApiRequest request) =>
        request.headerParameter('X-API-KEY'),
    writeToRequest: (
      OpenApiClientRequest request,
      String value,
    ) =>
        request.addHeaderParameter(
      'X-API-KEY',
      [value],
    ),
  );
}

T _throwStateError<T>(String message) => throw StateError(message);
