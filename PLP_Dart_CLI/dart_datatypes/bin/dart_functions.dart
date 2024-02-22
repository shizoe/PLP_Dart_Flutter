import 'package:dart_utils/dart_functions.dart';

void main() {
  // Print the result to the console
  print(
      'This is the result of summing up $num1 and $num2 : ${addTwo(num1, num2)}\n');
  print(
      'This is the result of subtracting $num1 from $num2 : ${subtractTwo(num1, num2)}\n');
  print(
      'This is the result of multiplying $num1 and $num2 : ${multiplyTwo(num1, num2)}\n');

  print('This is quotient  of $num3 by $num4 : ${divideTwo(num3, num4)}\n');
  print(
      'This is the result is the count of how many characters are in $myName : ${stringLength(myName)}\n');
  print(
      'This name is the first name in my list $myFriends : ${getFirstElement(myFriends)}');
}
