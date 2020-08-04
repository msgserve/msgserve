import 'package:meta/meta.dart';
import 'package:msgserv_client/src/msgserv_event.dart';
import 'package:msgserv_client/src/msgserv_opts.dart';

typedef AdditionalContextBuilder = Future<Map<String, Object>> Function();
typedef CustomActionHandler = Future<bool> Function(
    MsgServEventTriggerCustom event);

class MsgServBloc {
  MsgServBloc({
    @required this.opts,
    this.packageInfo,
    this.headers,
  }) : assert(opts != null);

  final MsgServOpts opts;
  final MsgServPackageInfo packageInfo;
  final Map<String, String> headers;
}
