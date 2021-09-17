import 'package:uuid/uuid.dart';

class UuidUtil {
  UuidUtil._();
  static final instance = UuidUtil._();

  final _uuid = const Uuid();
  // language=RegExp
  final _uuidRegexp = RegExp(r'^[0-9a-fA-F-]{32,38}$');
  final _timestampRegexp = RegExp(r'^[0-9]{10,16}$');

  String create() => _uuid.v4();

  bool isValidUuid(String uuid) => (_uuidRegexp.hasMatch(uuid) ||
      // old entries use a timestamp as id.
      _timestampRegexp.hasMatch(uuid));
}
