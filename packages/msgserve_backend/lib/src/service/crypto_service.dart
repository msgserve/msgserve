import 'dart:convert';
import 'dart:math';
import 'dart:typed_data';

import 'package:uuid/data.dart';
import 'package:uuid/rng.dart';
import 'package:uuid/uuid.dart';

enum TokenType {
  emailConfirm,
  authToken,
}

class CryptoService {
  final Random _random = Random.secure();
  final Uuid _uuid = Uuid(goptions: GlobalOptions(CryptoRNG()));

  static const _ADDRESS_LENGTH = 32;
//  static const _ADDRESS_CHARACTERS = 'abcdefghijklmnopqrstuvwxyz0123456789._-+';
  static const _ADDRESS_CHARACTERS = 'abcdefghijklmnopqrstuvwxyz0123456789';

  String createSecureUuid() => _uuid.v4();

  String createSecureToken({int length = 32, required TokenType type}) {
    final byteLength = length ~/ 4 * 3;
    final list = Uint8List(byteLength);
    for (var i = 0; i < byteLength; i++) {
      list[i] = _random.nextInt(256);
    }
    final token = base64.encode(list);
    assert(token.length == length);
    return token;
  }

  String createRandomAddress() {
    final address = String.fromCharCodes(Iterable.generate(
        _ADDRESS_LENGTH,
        (_) => _ADDRESS_CHARACTERS
            .codeUnitAt(_random.nextInt(_ADDRESS_CHARACTERS.length))));
    return address;
  }
}
