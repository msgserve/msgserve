import 'package:meta/meta.dart';
import 'package:msgserv_backend/src/db/database_access.dart';
import 'package:msgserv_backend/src/env/env.dart';
import 'package:msgserv_backend/src/service/crypto_service.dart';

class ServiceProvider {
  ServiceProvider({
    @required this.env,
  }) : assert(env != null);

  final Env env;
  final CryptoService cryptoService = CryptoService();

  DatabaseAccess createDatabaseAccess() => DatabaseAccess(
        cryptoService: cryptoService,
        config: env.config.database,
      );
}
