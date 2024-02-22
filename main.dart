// importing dart:io file

import 'dart:ffi';

void main() {
  int myNum = 10;
  double myNum1 = 13.23;

  print("my first number with int datatyoe is $myNum."
      "The second number with double datatype is $myNum1 ");

  num myNum3 = 100;
  num myNum4 = 12.34;
  bool zoe = true;
  List<String> myList1 = [
    "my first number with",
    "my second number with",
    "my third number with",
    "my fourth number",
    "Map<String"
  ];
  List<double> myList = [19.4, 14.3, 17.4, 10.3, 3, 2, 1, 0];

  if (myNum3 == myNum4) {
    print("Testing out variable declarations in Dart file");
  } else {
    print(
        "the two choosen test variables are not the same. zoe is my daughter: $zoe");
    print("Tying out List declarations in Dart file: $myList");
    print("Tying out List declarations in $myList1");

    print("My favoirite muber in the list is ${myList[2]} ");
  }
  try {
    print("my favorite words in the list is ${myList1[7]}");
  } catch (Exception) {
    print("The specified index is not in the list: $Exception");
  }

  Map<String, int> myList2 = {
    "Zoe": 4,
    "Mabo jr": 2,
    "Mercy": 30,
    "Zelipa": 19,
    "Alick": 21
  };

  print("My Key value pair list is: $myList2");
  // print("Trying to access the list:${myList2}");

  // Define a string with runes
  String runesString = "Runes in Dart: \u{1F600} \u{1F64B} \u{1F680}";

  // Print the string
  print(runesString);

  int num1 = 10;
  int num2 = 3;

  // performing arithmetic calculation
  int sum = num1 + num2; // addition
  int diff = num1 - num2; // subtraction
  int subtract = num2 - num1; // unary minus
  int mul = num1 * num2; // multiplication
  double div = num1 / num2; // division
  int div2 = num1 ~/ num2; // integer division
  int mod = num1 % num2; // show remainder

//Printing info
  print("The addition is $sum.");
  print("The subtraction is $diff.");
  print("The unary minus is $subtract");
  print("The multiplication is $mul.");
  print("The division is $div.");
  print("The integer division is $div2.");
  print("The modulus is $mod.");

  int myNumbers(int a, int b) {
    return a + b;
  }

  int myresults = myNumbers(10, 3);
  print("The sum of the results is $myresults.");

  List vehicles = [
    'a',
    'b',
    'c',
    'd',
    'e',
    'f',
    'g',
    'h',
    'i',
    'j',
    'k',
    'l',
    'm',
    'n',
    'o',
    'p',
    'q',
    'r',
    '10',
    13.4
  ];
  vehicles.forEach(
      (vehicle) => print("These are the leters of the alphabet $vehicle"));

  var multipleNum = (double x, double y) {
    return (x * y);
  };
  print(
      "The result is as a result of an anonymous variable multiplication: ${multipleNum(16, 10)}");
  int numberIncreaser(int x) => (x + 1);
  int numberDecreaser(int x) => (x - 1);
  print(numberIncreaser(10));
  print(numberDecreaser(10));
}
