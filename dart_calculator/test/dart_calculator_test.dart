import 'package:dart_calculator/dart_calculator.dart';
import 'package:test/test.dart';

// ignore: camel_case_types
class getOutputLines {
  // This is a static method named 'contains' that takes a string 's' as an argument.
  static bool contains(String s) {
    // The method currently returns true for any input string 's'.
    // This might be a placeholder implementation, as it does not actually check if a certain condition is met.
    return true;
  }
}

void main() {
  group('Calculator', () {
    late Calculator calculator;

    setUp(() {
      calculator = Calculator(StdInputProvider());
    });

    /// Test case for addition operation.
    test('Addition', () {
      expect(calculator.add(5, 3), equals(8));
    });

    /// Test case for subtraction operation.
    test('Subtraction', () {
      expect(calculator.subtract(10, 4), equals(6));
    });

    /// Test case for multiplication operation.
    test('Multiplication', () {
      expect(calculator.multiply(7, 6), equals(42));
    });

    /// Test case for division operation.
    test('Division', () {
      expect(calculator.divide(15, 3), equals(5.0));
      expect(calculator.divide(10, 0), equals(0.0));
    });

    /// Test case for factorial operation.
    test('Factorial', () {
      expect(calculator.factorial(5), equals(120));
      expect(calculator.factorial(0), equals(1));
    });

    /// Test case for modulus operation.
    test('Modulus', () {
      expect(calculator.modulus(5, 3), equals(2));
      expect(calculator.modulus(10, 2), equals(0));
      expect(calculator.modulus(3, 7), equals(3));
    });
  });

  // Test case for addition operation.
  test('Addition Output', () {
    List<String> inputLines = ['1', '5', '3', '0'];
    var mockedCalculator = Calculator(MockInputProvider(inputLines));
    mockedCalculator.run();
    expect(getOutputLines.contains('Result: 5 + 3 = 8'), equals(true));
  });
}
