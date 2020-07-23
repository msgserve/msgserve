import 'package:meta/meta.dart';
import 'package:msgserv_backend/src/env/env.dart';

class ServiceProvider {
  ServiceProvider({
    @required this.env,
  }) : assert(env != null);

  final Env env;

//  DatabaseAccess createDatabaseAccess() => DatabaseAccess(
//        cryptoService: cryptoService,
//        config: env.config.database,
//      );
}
