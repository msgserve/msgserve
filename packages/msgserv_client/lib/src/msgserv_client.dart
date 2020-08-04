import 'package:clock/clock.dart';
import 'package:meta/meta.dart';
import 'package:msgserv_client/src/msgserv_opts.dart';
import 'package:msgserv_shared/msgserv_shared.dart';
import 'package:openapi_base/openapi_base.dart';

class MsgServApi {
  MsgServApi({
    @required this.opts,
    @required this.packageInfo,
    this.headers,
  }) : requestSender = HttpRequestSender();

  final MsgServOpts opts;
  final MsgServPackageInfo packageInfo;
  final Map<String, String> headers;
  final HttpRequestSender requestSender;

  MsgServBackendClient _clientCached;
  MsgServBackendClient get _client => _clientCached ??=
      MsgServBackendClient(Uri.parse(opts.endpointUrl), requestSender);

  void sendEvent() {
    _client.eventPost(
      Event(ts: clock.now().toUtc(), context: EventContext()),
    );
  }

  void dispose() {
    requestSender.dispose();
  }
}
