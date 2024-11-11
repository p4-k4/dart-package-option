import 'package:option/option.dart';
import 'package:test/test.dart';

void main() {
  group('Option type tests', () {
    test('divide returns Some with valid input', () {
      final result = divide(10, 2);

      expect(result, isA<Some<double>>());
      expect((result as Some).value, equals(5.0));
    });

    test('divide returns None when dividing by zero', () {
      final result = divide(10, 0);

      expect(result, isA<None<double>>());
    });

    test('pattern matching works correctly', () {
      final result = divide(10, 2);

      switch (result) {
        case Some(value: var x):
          expect(x, equals(5.0));
        case None():
          fail('Should not be None');
      }
    });
  });
}

Option<double> divide(int a, int b) {
  if (b == 0) return const None();
  return Some(a / b);
}
