import 'package:dart_utils/dart_utils.dart';

void main() {
  //printNumber();

  print("Takes two arguments and returns their sum: ${sumNumbers(18, 22)}");

  print("A loops that prints numbers from 1 to 10:");
  printNumbers();

  print("switch statement that checks the value of a string: dog");
  checkString('dog');
  print("switch statement that checks the value of a string: car");
  checkString('car');
  print("A loops that prints numbers from 20 to 10:");
  printNumbersDescending();
  print("Check if a number is even or odd: 3");
  checkEvenOdd(3);
  print("Check if a number is even or odd: 10");
  checkEvenOdd(10);
  print("Find the largest number in a list: $list");
  print(findLargestNumber(list));
  print("Divide two numbers: 2 into 10");
  divideNumbers(10, 2);
  print("Divide two numbers: 0 into 10");
  divideNumbers(10, 0);
}
