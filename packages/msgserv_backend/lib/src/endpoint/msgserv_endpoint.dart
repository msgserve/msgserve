import 'package:meta/meta.dart';
import 'package:msgserv_backend/src/db/database_access.dart';
import 'package:msgserv_backend/src/service/service_provider.dart';
import 'package:msgserv_shared/msgserv_shared.dart';
import 'package:openapi_base/openapi_base.dart';

class MsgServBackendImpl extends MsgServBackend {
  MsgServBackendImpl({
    @required this.serviceProvider,
    @required this.db,
    @required this.request,
  });

  final ServiceProvider serviceProvider;
  final DatabaseTransaction db;
  final OpenApiRequest request;

  @override
  Future<CheckGetResponse> checkGet() async {
    final lastVersion = await db.tables.migration.queryLastVersion(db);
    return CheckGetResponse.response200(
        CheckGetResponseBody200(dbVersion: lastVersion));
  }

  @override
  Future<EventPostResponse> eventPost(Event body) {
    throw UnimplementedError();
  }
}
