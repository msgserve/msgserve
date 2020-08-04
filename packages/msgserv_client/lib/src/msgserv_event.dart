import 'package:meta/meta.dart';
import 'package:msgserv_shared/msgserv_shared.dart';

enum MsgServEventType {
  shown,
  trigger,
  dismissed,
}

class MsgServEvent {
  MsgServEvent({@required this.type, @required this.message})
      : assert(type != null),
        assert(message != null);

  final MsgServEventType type;
  final Message message;

  @override
  String toString() {
    return 'MsgServEvent{type: $type, message: $message}';
  }
}

abstract class MsgServEventWithAction implements MsgServEvent {
  MessageAction get action;
}

class MsgServEventTriggerCustom extends MsgServEvent
    implements MsgServEventWithAction {
  MsgServEventTriggerCustom({
    @required Message message,
    @required this.action,
    @required this.uri,
  })  : assert(uri != null),
        assert(action != null),
        super(type: MsgServEventType.dismissed, message: message);

  @override
  final MessageAction action;
  final Uri uri;
}
