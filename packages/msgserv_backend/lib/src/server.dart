import 'package:logging/logging.dart';
import 'package:logging_appenders/logging_appenders.dart';
import 'package:meta/meta.dart';
import 'package:msgserv_backend/src/endpoint/msgserv_endpoint.dart';
import 'package:msgserv_backend/src/env/env.dart';
import 'package:msgserv_backend/src/service/service_provider.dart';
import 'package:msgserv_shared/msgserv_shared.dart';
import 'package:openapi_base/openapi_base.dart';

final _logger = Logger('server');

class Server {
  Server({required this.env}) : assert(env != null);

  final Env env;

  Future<ServiceProvider> prepareServiceProviderAndDatabase() async {
    final serviceProvider = ServiceProvider(
      env: env,
    );

    final db = serviceProvider.createDatabaseAccess();
    await db.prepareDatabase();
    await db.dispose();
    return serviceProvider;
  }

  Future<void> run() async {
    PrintAppender.setupLogging();
    _logger.fine('Starting Server ... ${BuildInfo.asString()}');

    final serviceProvider = await prepareServiceProviderAndDatabase();

    final server = OpenApiShelfServer(
        MsgServBackendRouter(MsgServEndointProvider(serviceProvider)));
    final process = await server.startServer(
      address: env.config.http.host,
      port: env.config.http.port,
    );
    final exitCode = await process.exitCode;
    _logger.fine('exitCode from server: $exitCode');
  }
}

class MsgServEndointProvider extends ApiEndpointProvider<MsgServBackendImpl> {
  MsgServEndointProvider(this.serviceProvider);

  final ServiceProvider serviceProvider;

  @override
  Future<U> invoke<U>(request, callback) async {
//    return await callback(MsgServBackendImpl(serviceProvider: serviceProvider));
    final db = serviceProvider.createDatabaseAccess();
    try {
      return await db.run((conn) async {
        return await callback(MsgServBackendImpl(
          serviceProvider: serviceProvider,
          db: conn,
          request: request,
//          conn,
//          UserRepository(conn),
//          EmailRepository(
//            db: conn,
//            cryptoService: serviceProvider.cryptoService,
//            env: serviceProvider.env,
//          ),
        ));
      });
    } finally {
      await db.dispose();
    }
  }
}
