import 'package:msgserve_shared/msgserv_shared.dart';

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
    required super.campaign,
  }) : super(
          type: MsgServeEventType.campaignTrigger,
        );

  final AppEvent appEvent;
  // final MsgServCampaign campaign;
}

abstract class MsgServeEventWithAction implements MsgServeEvent {
  MsgServeAction? get action;
}

/// event executed when the user presses an action on a campaign.
class MsgServeEventTriggerCustom extends MsgServeEvent
    implements MsgServeEventWithAction {
  MsgServeEventTriggerCustom({
    required super.campaign,
    required this.action,
    required this.uri,
  }) : super(type: MsgServeEventType.dismissed);

  @override
  final MsgServeAction action;
  final Uri uri;
}

class MsgServeEventDismissed extends MsgServeEvent
    implements MsgServeEventWithAction {
  MsgServeEventDismissed({
    required super.campaign,
    required this.action,
  }) : super(type: MsgServeEventType.dismissed);

  @override
  final MsgServeAction action;

  @override
  String toString() {
    return 'MsgServEventDismissed{action: $action, ${super.toString()}}';
  }
}
