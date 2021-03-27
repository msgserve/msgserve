import 'package:meta/meta.dart';
import 'package:msgserv_backend/src/db/tables/dummy_table.dart';
import 'package:msgserv_backend/src/service/crypto_service.dart';
import 'package:postgres/postgres.dart';
import 'package:postgres_utils/postgres_utils.dart';

class DatabaseTransaction extends DatabaseTransactionBase<AuthPassTables> {
  DatabaseTransaction(PostgreSQLExecutionContext conn, AuthPassTables tables)
      : super(conn, tables);
}

class DatabaseAccess
    extends DatabaseAccessBase<DatabaseTransaction, AuthPassTables> {
  DatabaseAccess({
    required CryptoService cryptoService,
    required DatabaseConfig config,
  })  : assert(config != null),
        assert(cryptoService != null),
        super(
          config: config,
          tables: AuthPassTables(cryptoService: cryptoService),
          migrations: AuthPassMigrationsProvider(),
        );

  @override
  DatabaseTransaction createDatabaseTransaction(
      PostgreSQLExecutionContext conn, AuthPassTables tables) {
    return DatabaseTransaction(conn, tables);
  }
}

class AuthPassTables extends TablesBase {
  AuthPassTables({
    required CryptoService cryptoService,
  }) : dummy = DummyTable(cryptoService: cryptoService);

  final DummyTable dummy;

  @override
  List<TableBase> get tables => [
        dummy,
      ];
}

class AuthPassMigrationsProvider
    extends MigrationsProvider<DatabaseTransaction, AuthPassTables> {
  @override
  List<Migrations<DatabaseTransaction, AuthPassTables>> get migrations {
    return [
      Migrations(
          id: 1,
          up: (tx) async {
            await tx.tables.dummy.createTables(tx);
          }),
    ];
  }
}
