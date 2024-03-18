Sure, here's a simple README.md for the calculator:

---

# Simple Dart Calculator

A simple command-line calculator written in Dart. This calculator allows you to perform basic arithmetic operations such as addition, subtraction, multiplication, and division. It also includes operations for factorial and modulus calculation.

## Features

- Addition
- Subtraction
- Multiplication
- Division
- Factorial
- Modulus

## Usage

1. Clone the repository:

   ```bash
   git clone https://github.com/shizoe/PLP_Dart_Flutter/tree/main/dart_calculator.git
   ```

2. Navigate to the project directory:

   ```bash
   cd dart-calculator
   ```

3. Run the calculator:

   ```bash
   dart calculator.dart
   ```

4. Follow the on-screen instructions to perform calculations. Enter the number corresponding to the desired operation and provide input as prompted.

5. To exit the calculator, press `0` when prompted to choose an operation or any other key when prompted to continue.

## Testing with Mock Input

To test the calculator with mock input, you can provide a list of input lines to simulate user input. You can use this feature to automate testing or simulate specific scenarios.

```dart
List<String> inputLines = ['1', '5', '3', '0'];
var mockedCalculator = Calculator(MockInputProvider(inputLines));
mockedCalculator.run();
```

## Contributing

Contributions are welcome! If you have any suggestions, bug reports, or feature requests, please open an issue on GitHub or submit a pull request.

## License

This project is licensed under the [MIT License](LICENSE).

---

Feel free to customize and expand upon this README to better suit your project's needs.
