# Dart Utility Console Application

This Dart program provides a collection of utility functions that can be used in various applications. The program includes the following functions:

1. `sumNumbers(int a, int b)`: Calculates the sum of two numbers.
2. `printNumbers([void Function(Object object)? capturedPrint])`: Prints numbers from 1 to 10.
3. `checkString(String value, [void Function(Object object)? capturedPrint])`: Checks the value of a string and prints a corresponding message.
4. `printNumbersDescending([void Function(Object object)? capturedPrint])`: Prints numbers in descending order from 20 to 10.
5. `checkEvenOdd(int number, [void Function(Object object)? capturedPrint])`: Checks whether a given number is even or odd.
6. `findLargestNumber(List<int> numbers)`: Finds the largest number in a list of integers.
7. `divideNumbers(int a, int b, [void Function(Object object)? capturedPrint])`: Divides two numbers and prints the result or error.

## Usage

You can use these functions in your Dart projects by importing the file containing the definitions. For example:

```dart
import 'dart_utility_functions.dart';

void main() {
  int result = sumNumbers(5, 10);
  print(result); // Output: 15

  printNumbers(); // Output: 1, 2, 3, 4, 5, 6, 7, 8, 9, 10

  checkString('apple'); // Output: It is a fruit.
  checkString('car'); // Output: It is a vehicle.
  checkString('dog'); // Output: It is an animal.
  checkString('unknown'); // Output: Unknown value.

  printNumbersDescending(); // Output: 20, 19, 18, 17, 16, 15, 14, 13, 12, 11, 10

  checkEvenOdd(4); // Output: 4 is even.
  checkEvenOdd(7); // Output: 7 is odd.

  List<int> numbers = [18, 2, 23, 40, 15, 9, 12, 3, 23, 44, 89, 13, 23, 57];
  int largest = findLargestNumber(numbers);
  print(largest); // Output: 89

  divideNumbers(10, 2); // Output: Result: 5.0
  divideNumbers(10, 0); // Output: Error: IntegerDivisionByZeroException
}
```

## Testing

The program includes unit tests for each of the functions. You can run the tests using the `test` package in Dart. The test cases cover different scenarios and edge cases for each function.

To run the tests, you need to have the `test` package installed in your Dart project. You can add it to your `pubspec.yaml` file:

```yaml
dependencies:
  test: ^1.21.0
```

Then, you can run the tests using the `flutter test` or `dart test` command in your terminal.
