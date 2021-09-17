import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:msgserve_client/src/msgserve_event.dart';

part 'msgserve_dto.g.dart';
part 'msgserve_dto.freezed.dart';

@JsonSerializable()
class MsgServConfig {
  MsgServConfig({required this.updatedAt, required this.campaigns});
  factory MsgServConfig.fromJson(Map<String, dynamic> json) =>
      _$MsgServConfigFromJson(json);
  Map<String, dynamic> toJson() => _$MsgServConfigToJson(this);

  final DateTime updatedAt;
  final List<MsgServCampaign> campaigns;

  MsgServConfig copyWith({
    DateTime? updatedAt,
    List<MsgServCampaign>? campaigns,
  }) =>
      MsgServConfig(
        updatedAt: updatedAt ?? this.updatedAt,
        campaigns: campaigns ?? this.campaigns,
      );
}

@freezed
class MsgServCampaign with _$MsgServCampaign {
  const factory MsgServCampaign({
    required String id,
    required String key,
    required MsgServInterstitialArtifact? interstitial,
    required DateTime? dateStart,
    required DateTime? dateEnd,
    required String? filter,
    required String? trigger,
  }) = _MsgServCampaign;

  factory MsgServCampaign.fromJson(Map<String, dynamic> json) =>
      _$MsgServCampaignFromJson(json);
}

@JsonSerializable()
class MsgServInterstitialArtifact extends MsgServCampaignAction
    implements MsgServCampaignActionWithUrl {
  MsgServInterstitialArtifact({
    required this.graphics,
    required this.targetUrl,
  });

  factory MsgServInterstitialArtifact.fromJson(Map<String, dynamic> json) =>
      _$MsgServInterstitialArtifactFromJson(json);
  Map<String, dynamic> toJson() => _$MsgServInterstitialArtifactToJson(this);

  final String targetUrl;
  final List<MsgServInterstitialGraphic> graphics;

  @override
  String get key => 'click';

  @override
  String? get url => targetUrl;

  MsgServCampaignAction get actionOpen => this;

  MsgServCampaignAction get actionDismiss => _DismissAction();
}

class _DismissAction extends MsgServCampaignAction {
  @override
  String get key => 'dismiss';
}

abstract class MsgServGraphic {
  String get url;
}

@JsonSerializable()
class MsgServInterstitialGraphic implements MsgServGraphic {
  MsgServInterstitialGraphic({
    required this.url,
    required this.fill,
  });

  factory MsgServInterstitialGraphic.fromJson(Map<String, dynamic> json) =>
      _$MsgServInterstitialGraphicFromJson(json);
  Map<String, dynamic> toJson() => _$MsgServInterstitialGraphicToJson(this);
  @override
  final String url;
  final MsgServFill fill;
}

enum MsgServFill {
  contain,
  cover,
}
