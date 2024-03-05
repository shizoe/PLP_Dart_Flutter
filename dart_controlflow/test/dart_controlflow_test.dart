// Unit test
import 'package:dart_controlflow/dart_controlflow.dart';
import 'package:test/test.dart';

void main() {
  // Test case 1: input is greater than 10
  test('Input is greater than 10', () {
    final input = '15';
    final expectedOutput = 'Your number is greater than 10';
    expect(() => myNumber(input), prints('$expectedOutput\n'));
  });

  // Test case 2: input is less than number
  test('Input is less than 10', () {
    final input = '7.5';
    final expectedOutput = 'Your number is less than 10';
    expect(() => myNumber(input), prints('$expectedOutput\n'));
  });

  // Test case 3: input is equal to 10
  test('Input is equal to 10', () {
    final input = '10';
    final expectedOutput = 'Your number is equal to 10';
    expect(() => myNumber(input), prints('$expectedOutput\n'));
  });

  // Test case 4: input is not a number
  test('Input is not a number', () {
    final input = 'abc';
    final expectedOutput = 'Invalid input. Please enter a valid number.';
    expect(() => myNumber(input), prints('$expectedOutput\n'));
  });
}
