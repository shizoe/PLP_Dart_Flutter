import 'dart:io';

/// A function that takes an optional string input and determines if it is greater than, less than, or equal to 10.
///
/// If no input is provided, the function prompts the user to enter a number.
/// The function handles non-numeric inputs by catching the exception and printing an error message.
void myNumber([String? i]) {
  String? input;
  if (i == null) {
    stdout.write('Enter a number: ');
    input = stdin.readLineSync();
  } else {
    input = i;
  }

  try {
    num number = num.parse(input!);
    if (number > 10) {
      print('Your number is greater than 10');
    } else if (number < 10) {
      print('Your number is less than 10');
    } else {
      print('Your number is equal to 10');
    }
  } catch (e) {
    print('Invalid input. Please enter a valid number.');
  }
}
