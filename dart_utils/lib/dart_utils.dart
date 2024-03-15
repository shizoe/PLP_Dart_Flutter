List<int> list = [18, 2, 23, 40, 15, 9, 12, 3, 23, 44, 89, 13, 23, 57];

/// Calculates the sum of two numbers.
///
/// Takes two integers [a] and [b] as input and returns their sum.
int sumNumbers(int a, int b) {
  return a + b;
}

/// Prints numbers from 1 to 10.
///
/// Takes an optional [capturedPrint] function as input, which is used to print the numbers.
/// If [capturedPrint] is not provided, the default [print] function is used.
void printNumbers([void Function(Object object)? capturedPrint]) {
  for (int i = 1; i <= 10; i++) {
    (capturedPrint ?? print)(i.toString());
  }
}

/// Checks the value of a string and prints a corresponding message.
///
/// Takes a [value] string as input and an optional [capturedPrint] function for printing.
/// If [capturedPrint] is not provided, the default [print] function is used.
/// Prints "It is a fruit." if [value] is "apple",
/// "It is a vehicle." if [value] is "car",
/// "It is an animal." if [value] is "dog",
/// and "Unknown value." for any other value.
void checkString(String value, [void Function(Object object)? capturedPrint]) {
  switch (value) {
    case 'apple':
      (capturedPrint ?? print)('It is a fruit.');
      break;
    case 'car':
      (capturedPrint ?? print)('It is a vehicle.');
      break;
    case 'dog':
      (capturedPrint ?? print)('It is an animal.');
      break;
    default:
      (capturedPrint ?? print)('Unknown value.');
  }
}

/// Prints numbers in descending order from 20 to 10.
///
/// The [capturedPrint] parameter is an optional callback function that can be provided
/// to handle the printing of each number. If [capturedPrint] is not provided, the default
/// [print] function is used.
void printNumbersDescending([void Function(Object object)? capturedPrint]) {
  int i = 20;
  while (i >= 10) {
    (capturedPrint ?? print)(i.toString());
    i--;
  }
}

/// Checks whether a given number is even or odd.
///
/// The [number] parameter represents the number to be checked.
/// The [capturedPrint] parameter is an optional callback function that can be used to print the result.
/// If [capturedPrint] is not provided, the result will be printed using the `print` function.
///
/// Example usage:
/// ```dart
/// checkEvenOdd(5); // Output: "5 is odd."
/// checkEvenOdd(10, (message) => print('Result: $message')); // Output: "Result: 10 is even."
/// ```
checkEvenOdd(int number, [void Function(Object object)? capturedPrint]) {
  if (number % 2 == 0) {
    (capturedPrint ?? print)('$number is even.');
  } else {
    (capturedPrint ?? print)('$number is odd.');
  }
}

/// Finds the largest number in a list of integers.
///
/// Throws a [StateError] if the input list is empty.
///
/// Returns the largest number in the list.
int findLargestNumber(List<int> numbers) {
  if (numbers.isEmpty) {
    throw StateError('Input list is empty');
  }

  int largestNumber = numbers[0];
  for (int i = 1; i < numbers.length; i++) {
    if (numbers[i] > largestNumber) {
      largestNumber = numbers[i];
    }
  }
  return largestNumber;
}

/// Divides two numbers and prints the result or error.
///
/// The [divideNumbers] function takes two integers, [a] and [b], and divides them.
/// It optionally takes a [capturedPrint] function that will be used to print the result or error.
/// If [capturedPrint] is not provided, the default [print] function will be used.
///
/// Example usage:
/// ```dart
/// divideNumbers(10, 2);
/// // Output: Result: 5.0
///
/// divideNumbers(10, 0);
/// // Output: Error: IntegerDivisionByZeroException
/// ```
void divideNumbers(int a, int b,
    [void Function(Object object)? capturedPrint]) {
  try {
    double result = a / b;
    (capturedPrint ?? print)('Result: $result');
  } catch (e) {
    (capturedPrint ?? print)('Error: $e');
  }
}
