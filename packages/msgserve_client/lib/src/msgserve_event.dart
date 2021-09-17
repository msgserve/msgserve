import 'package:msgserve_client/src/dto/msgserve_dto.dart';

enum MsgServeEventType {
  shown,
  trigger,
  dismissed,
  campaignTrigger,
}

extension MsgServeEventTypeToString on MsgServeEventType {
  String toStringBare() => toString().substring(toString().indexOf('.') + 1);
}

class MsgServeEvent {
  MsgServeEvent({required this.type, required this.campaign});

  final MsgServeEventType type;
  final MsgServeCampaign campaign;

  @override
  String toString() {
    return 'MsgServEvent{type: $type, message: $campaign}';
  }
}

abstract class MsgServeCampaignAction {
  String get key;
}

abstract class MsgServeCampaignActionWithUrl {
  String? get url;
}

class AppEvent {
  AppEvent(this.appEventData);

  final Map<String, Object> appEventData;

  Object? operator [](String key) => appEventData[key];

  @override
  String toString() => appEventData.toString();
}

/// triggered when the `trigger` expression of a campaign executes.
class MsgServeCampaignTriggered extends MsgServeEvent {
  MsgServeCampaignTriggered({
    required this.appEvent,
    required MsgServeCampaign campaign,
  }) : super(
          type: MsgServeEventType.campaignTrigger,
          campaign: campaign,
        );

  final AppEvent appEvent;
  // final MsgServCampaign campaign;
}

abstract class MsgServeEventWithAction implements MsgServeEvent {
  MsgServeCampaignAction? get action;
}

/// event executed when the user presses an action on a campaign.
class MsgServeEventTriggerCustom extends MsgServeEvent
    implements MsgServeEventWithAction {
  MsgServeEventTriggerCustom({
    required MsgServeCampaign campaign,
    required this.action,
    required this.uri,
  }) : super(type: MsgServeEventType.dismissed, campaign: campaign);

  @override
  final MsgServeCampaignAction action;
  final Uri uri;
}

class MsgServeEventDismissed extends MsgServeEvent
    implements MsgServeEventWithAction {
  MsgServeEventDismissed({
    required MsgServeCampaign campaign,
    this.action,
  }) : super(type: MsgServeEventType.dismissed, campaign: campaign);

  @override
  final MsgServeCampaignAction? action;

  @override
  String toString() {
    return 'MsgServEventDismissed{action: $action, ${super.toString()}}';
  }
}
