import 'package:msgserve_backend/msgserv_backend.dart';
import 'package:test/test.dart';

void main() {
  group('A group of tests', () {
    late Awesome awesome;

    setUp(() {
      awesome = Awesome();
    });

    test('First Test', () {
      expect(awesome.isAwesome, isTrue);
    });
  });
}
