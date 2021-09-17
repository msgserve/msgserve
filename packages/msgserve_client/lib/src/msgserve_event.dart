import 'package:msgserve_client/src/dto/msgserve_dto.dart';

enum MsgServEventType {
  shown,
  trigger,
  dismissed,
  campaignTrigger,
}

extension MsgServEventTypeToString on MsgServEventType {
  String toStringBare() => toString().substring(toString().indexOf('.') + 1);
}

class MsgServEvent {
  MsgServEvent({required this.type, required this.campaign});

  final MsgServEventType type;
  final MsgServCampaign campaign;

  @override
  String toString() {
    return 'MsgServEvent{type: $type, message: $campaign}';
  }
}

abstract class MsgServCampaignAction {
  String get key;
}

abstract class MsgServCampaignActionWithUrl {
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
class MsgServCampaignTriggered extends MsgServEvent {
  MsgServCampaignTriggered({
    required this.appEvent,
    required MsgServCampaign campaign,
  }) : super(
          type: MsgServEventType.campaignTrigger,
          campaign: campaign,
        );

  final AppEvent appEvent;
  // final MsgServCampaign campaign;
}

abstract class MsgServEventWithAction implements MsgServEvent {
  MsgServCampaignAction? get action;
}

/// event executed when the user presses an action on a campaign.
class MsgServEventTriggerCustom extends MsgServEvent
    implements MsgServEventWithAction {
  MsgServEventTriggerCustom({
    required MsgServCampaign campaign,
    required this.action,
    required this.uri,
  }) : super(type: MsgServEventType.dismissed, campaign: campaign);

  @override
  final MsgServCampaignAction action;
  final Uri uri;
}

class MsgServEventDismissed extends MsgServEvent
    implements MsgServEventWithAction {
  MsgServEventDismissed({
    required MsgServCampaign campaign,
    this.action,
  }) : super(type: MsgServEventType.dismissed, campaign: campaign);

  @override
  final MsgServCampaignAction? action;

  @override
  String toString() {
    return 'MsgServEventDismissed{action: $action, ${super.toString()}}';
  }
}
