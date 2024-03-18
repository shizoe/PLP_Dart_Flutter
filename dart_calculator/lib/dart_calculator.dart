import 'dart:io';

abstract class InputProvider {
  String? readLineSync(); // Abstract method for reading input lines
}

class StdInputProvider implements InputProvider {
  @override
  String? readLineSync() {
    return stdin.readLineSync(); // Reads input from standard input (console)
  }
}

class MockInputProvider implements InputProvider {
  final List<String> _inputLines; // List of input lines
  int _index = 0; // Index to keep track of the current input line

  MockInputProvider(
      this._inputLines); // Constructor to initialize the input lines

  @override
  String? readLineSync() {
    if (_index < _inputLines.length) {
      return _inputLines[
          _index++]; // Returns the current input line and increments the index
    }
    return _inputLines[_index];
  }
}

class Calculator {
  final InputProvider inputProvider;

  Calculator(this.inputProvider) {
    print('Welcome to the Dart Calculator!');
  }

  // Basic mathematical functions
  double add(double a, double b) => a + b;
  double subtract(double a, double b) => a - b;
  double multiply(double a, double b) => a * b;
  double divide(double a, double b) {
    if (b == 0) {
      print('Error: Division by zero.');
      return 0.0;
    }
    return a / b;
  }

  // Recursive factorial function
  double factorial(double n) {
    if (n == 0 || n == 1) {
      return 1;
    }
    return n * factorial(n - 1);
  }

  double modulus(double a, double b) => a % b;

  // Main calculator logic
  void run() {
    while (true) {
      print('\nChoose an operation:');
      print('1. Addition');
      print('2. Subtraction');
      print('3. Multiplication');
      print('4. Division');
      print('5. Factorial');
      print('6. Modulus');
      print('0. Exit');

      print('Enter your choice (0-6):');
      int? choice = int.tryParse(inputProvider.readLineSync() ?? '');
      print("The choice is $choice");

      if (choice == null || choice < 0 || choice > 6) {
        print('Invalid choice. Please try again.');
        continue;
      }

      if (choice == 0) {
        print('Exiting the calculator...');
        break;
      }

      print('Enter the first number:');
      double? num1 = double.tryParse(inputProvider.readLineSync() ?? '');

      if (num1 == null) {
        print('Invalid input. Please enter a number.');
        continue;
      }

      double? num2;
      if (choice != 5) {
        // If choice is not 5 (Factorial)
        print('Enter the second number:');
        num2 = double.tryParse(inputProvider.readLineSync() ?? '');

        if (num2 == null) {
          print('Invalid input. Please enter a number.');
          continue;
        }
      }

      switch (choice) {
        case 1:
          print('Result: $num1 + $num2 = ${add(num1, num2!)}');
          break;
        case 2:
          print('Result: $num1 - $num2 = ${subtract(num1, num2!)}');
          break;
        case 3:
          print('Result: $num1 * $num2 = ${multiply(num1, num2!)}');
          break;
        case 4:
          print('Result: $num1 / $num2 = ${divide(num1, num2!)}');
          break;
        case 5:
          print('Result: factorial of $num1 = ${factorial(num1)}');
          break;
        case 6:
          print('Result: $num1 % $num2 = ${modulus(num1, num2!)}');
          break;
      }

      print(
          '\nPress 1 to continue with another operation, or any other key to exit.');
      String? continueInput = inputProvider.readLineSync();
      if (continueInput != '1') {
        print('Exiting the calculator...');
        break;
      }
    }
  }
}
