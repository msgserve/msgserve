import 'package:msgserv_shared/msgserv_shared.dart';

class MsgServBackendImpl extends MsgServBackend {
  @override
  Future<CheckGetResponse> checkGet() async {
    return CheckGetResponse.response200();
  }
}
