import 'package:dart_utils/dart_utils.dart';
import 'package:test/test.dart';

void main() {
  // Test group for the 'printNumbers' function
  group('printNumbers', () {
    // Test case: Should print numbers from 1 to 10
    test('Should print numbers from 1 to 10', () {
      // Create an empty list to capture the printed output
      List<String> output = [];

      // Define a function to capture the printed output
      void capturedPrint(Object object) => output.add(object.toString());

      // Call the 'printNumbers' function with the 'capturedPrint' function
      printNumbers(capturedPrint);

      // Assert that the captured output is equal to the expected output
      expect(
          output, equals(['1', '2', '3', '4', '5', '6', '7', '8', '9', '10']));
    });
  });

  // Test group for the 'checkString' function
  group('checkString', () {
    // Test case: Should print the correct output for different cases
    test('Should print the correct output for different cases', () {
      // Create an empty list to capture the printed output
      List<String> output = [];

      // Define a function to capture the printed output
      void capturedPrint(Object object) => output.add(object.toString());

      // Call the 'checkString' function with different input strings
      checkString('apple', capturedPrint);
      checkString('car', capturedPrint);
      checkString('dog', capturedPrint);
      checkString('unknown', capturedPrint);

      // Assert that the captured output is equal to the expected output
      expect(
          output,
          equals([
            'It is a fruit.',
            'It is a vehicle.',
            'It is an animal.',
            'Unknown value.'
          ]));
    });
  });

  /// Test case for the `printNumbersDescending` function.
  ///
  /// This test verifies that the `printNumbersDescending` function correctly prints numbers from 20 to 10 in descending order.
  /// It creates an empty list to capture the printed output, defines a `capturedPrint` function to add the printed values to the list,
  /// calls the `printNumbersDescending` function with the `capturedPrint` function, and then asserts that the captured output matches the expected values.
  group('printNumbersDescending', () {
    test('Should print numbers from 20 to 10 in descending order', () {
      List<String> output = [];
      void capturedPrint(Object object) => output.add(object.toString());
      printNumbersDescending(capturedPrint);
      expect(
          output,
          equals([
            '20',
            '19',
            '18',
            '17',
            '16',
            '15',
            '14',
            '13',
            '12',
            '11',
            '10'
          ]));
    });
  });

  /// Tests the `checkEvenOdd` function.
  ///
  /// This group of tests verifies that the `checkEvenOdd` function correctly
  /// prints the output for even and odd numbers.
  group('checkEvenOdd', () {
    test('Should print the correct output for even and odd numbers', () {
      List<String> output = [];

      // A helper function to capture the printed output and store it in the `output` list.
      void capturedPrint(Object object) => output.add(object.toString());

      // Test the `checkEvenOdd` function with an even number.
      checkEvenOdd(4, capturedPrint);

      // Test the `checkEvenOdd` function with an odd number.
      checkEvenOdd(7, capturedPrint);

      // Verify that the `output` list contains the expected output.
      expect(output, equals(['4 is even.', '7 is odd.']));
    });
  });
  // Test case for the `findLargestNumber` function.
  //
  // This test verifies that the `findLargestNumber` function correctly returns the largest number in a given list.
  // It includes multiple test cases:
  // - Test case 1: List with positive numbers. It expects the largest number to be 12.
  // - Test case 2: List with negative numbers. It expects the largest number to be -3.
  // - Test case 3: List with a single element. It expects the largest number to be 42.
  // - Test case 4: Empty list. It expects the function to throw a `StateError`.
  group('findLargestNumber', () {
    test('Should return the largest number in the list', () {
      // Test case 1: List with positive numbers
      List<int> numbers1 = [5, 12, 3, 9, 7];
      expect(findLargestNumber(numbers1), equals(12));

      // Test case 2: List with negative numbers
      List<int> numbers2 = [-10, -5, -20, -3, -8];
      expect(findLargestNumber(numbers2), equals(-3));

      // Test case 3: List with a single element
      List<int> numbers3 = [42];
      expect(findLargestNumber(numbers3), equals(42));

      // Test case 4: Empty list
      List<int> numbers4 = [];
      expect(() => findLargestNumber(numbers4), throwsStateError);
    });
  });

  // Test case for the `divideNumbers` function.
  //
  // This test verifies that the `divideNumbers` function correctly performs division and prints the result.
  // It includes two test cases:
  // - Test case 1: Division with a non-zero divisor. It expects the output to be 'Result: 2.0'.
  // - Test case 2: Division by zero. It expects the output to be 'Result: Infinity'.
  group('divideNumbers', () {
    test('Should perform division and print the result', () {
      List<String> output = [];
      void capturedPrint(Object object) => output.add(object.toString());

      // Test case 1: Division with a non-zero divisor
      divideNumbers(6, 3, capturedPrint);
      expect(output, equals(['Result: 2.0']));

      // Reset the output list
      output.clear();

      // Test case 2: Division by zero
      divideNumbers(10, 0, capturedPrint);
      expect(output, equals(['Result: Infinity']));
    });
  });
}
