import 'package:test/test.dart';
import 'package:dart_utils/dart_functions.dart';

void main() {
  group('Test addTwo function', () {
    test('Positive numbers', () {
      expect(addTwo(2, 3), equals(5));
    });

    test('Negative numbers', () {
      expect(addTwo(-2, -3), equals(-5));
    });
  });

  group('Test subtractTwo function', () {
    test('Positive numbers', () {
      expect(subtractTwo(5, 3), equals(2));
    });

    test('Negative numbers', () {
      expect(subtractTwo(-5, -3), equals(-2));
    });
  });

  group('Test multiplyTwo function', () {
    test('Positive numbers', () {
      expect(multiplyTwo(2, 3), equals(6));
    });

    test('Negative numbers', () {
      expect(multiplyTwo(-2, -3), equals(6));
    });
  });

  group('Test divideTwo function', () {
    test('Positive numbers', () {
      expect(divideTwo(10.0, 2.0), equals(5.0));
    });

    test('Negative numbers', () {
      expect(divideTwo(-10.0, -2.0), equals(5.0));
    });
  });

  group('Test stringLength function', () {
    test('Non-empty string', () {
      expect(stringLength('Hello'), equals(5));
    });

    test('Empty string', () {
      expect(stringLength(''), equals(0));
    });
  });

  group('Test getFirstElement function', () {
    test('Non-empty list', () {
      expect(getFirstElement([1, 2, 3]), equals(1));
    });

    test('Empty list', () {
      expect(getFirstElement([]), equals(null));
    });
  });
}
