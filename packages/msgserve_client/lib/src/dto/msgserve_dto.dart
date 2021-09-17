import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:msgserve_client/src/msgserve_event.dart';

part 'msgserve_dto.g.dart';
part 'msgserve_dto.freezed.dart';

@JsonSerializable()
class MsgServeConfig {
  MsgServeConfig({required this.updatedAt, required this.campaigns});
  factory MsgServeConfig.fromJson(Map<String, dynamic> json) =>
      _$MsgServeConfigFromJson(json);
  Map<String, dynamic> toJson() => _$MsgServeConfigToJson(this);

  final DateTime updatedAt;
  final List<MsgServeCampaign> campaigns;

  MsgServeConfig copyWith({
    DateTime? updatedAt,
    List<MsgServeCampaign>? campaigns,
  }) =>
      MsgServeConfig(
        updatedAt: updatedAt ?? this.updatedAt,
        campaigns: campaigns ?? this.campaigns,
      );
}

@freezed
class MsgServeCampaign with _$MsgServeCampaign {
  const factory MsgServeCampaign({
    required String id,
    required String key,
    required MsgServeInterstitialArtifact? interstitial,
    required DateTime? dateStart,
    required DateTime? dateEnd,
    required String? filter,
    required String? trigger,
  }) = _MsgServCampaign;

  factory MsgServeCampaign.fromJson(Map<String, dynamic> json) =>
      _$MsgServeCampaignFromJson(json);
}

@JsonSerializable()
class MsgServeInterstitialArtifact extends MsgServeCampaignAction
    implements MsgServeCampaignActionWithUrl {
  MsgServeInterstitialArtifact({
    required this.graphics,
    required this.targetUrl,
  });

  factory MsgServeInterstitialArtifact.fromJson(Map<String, dynamic> json) =>
      _$MsgServeInterstitialArtifactFromJson(json);
  Map<String, dynamic> toJson() => _$MsgServeInterstitialArtifactToJson(this);

  final String targetUrl;
  final List<MsgServeInterstitialGraphic> graphics;

  @override
  String get key => 'click';

  @override
  String? get url => targetUrl;

  MsgServeCampaignAction get actionOpen => this;

  MsgServeCampaignAction get actionDismiss => _DismissAction();
}

class _DismissAction extends MsgServeCampaignAction {
  @override
  String get key => 'dismiss';
}

abstract class MsgServeGraphic {
  String get url;
}

@JsonSerializable()
class MsgServeInterstitialGraphic implements MsgServeGraphic {
  MsgServeInterstitialGraphic({
    required this.url,
    required this.fill,
  });

  factory MsgServeInterstitialGraphic.fromJson(Map<String, dynamic> json) =>
      _$MsgServeInterstitialGraphicFromJson(json);
  Map<String, dynamic> toJson() => _$MsgServeInterstitialGraphicToJson(this);
  @override
  final String url;
  final MsgServeFill fill;
}

enum MsgServeFill {
  contain,
  cover,
}
