import 'package:meta/meta.dart';
import 'package:msgserv_backend/src/db/database_access.dart';
import 'package:msgserv_backend/src/service/crypto_service.dart';
import 'package:postgres_utils/postgres_utils.dart';

/// Example implementation of a table.
class DummyTable extends TableBase with TableConstants {
  DummyTable({@required this.cryptoService}) : assert(cryptoService != null);

  static const _TABLE_DUMMY = 'dummy';
  static const _COLUMN_LABEL = 'label';

  final CryptoService cryptoService;

  @override
  List<String> get tables => throw UnimplementedError();

  Future<void> createTables(DatabaseTransaction db) async {
    await db.execute('''
    CREATE TABLE $_TABLE_DUMMY (
      $specColumnIdPrimaryKey,
      $_COLUMN_LABEL varchar not null,
      $specColumnCreatedAt
    );
    ''');
  }

  Future<void> insertLabel(DatabaseTransaction db, String label) async {
    await db.executeInsert(_TABLE_DUMMY, {
      columnId: cryptoService.createSecureUuid(),
      _COLUMN_LABEL: label,
    });
  }
}
