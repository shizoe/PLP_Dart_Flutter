/* 
  addTwo function
  Returns the sum of two numbers.
  Example:
    addTwo(5, 3); // returns 8
*/
int addTwo(int a, int b) {
  return a + b;
}

/*
  subtractTwo function
  Returns the difference of two numbers.
  Example:
    subtractTwo(5, 3); // returns 2
*/
int subtractTwo(int a, int b) {
  return a - b;
}

/*
  multiplyTwo function
  Returns the product of two numbers.
  Example:
    multiplyTwo(4, 2); // returns 8
*/
int multiplyTwo(int a, int b) {
  return a * b;
}

/*
  divideTwo function
  Returns the quotient of two numbers.
  Example:
    divideTwo(10, 2); // returns 5
*/
double divideTwo(double a, double b) {
  return a / b;
}

/*
  stringLength function
  Returns the length of a given string.
    Example:
    stringLength("Hello"); // returns 5
*/
int stringLength(String str) {
  return str.length;
}

/*
  getFirstElement function
  Returns the first element of a given list.
  Example:
    getFirstElement([1, 2, 3]); // returns 1
*/
dynamic getFirstElement(List list) {
  return list.isNotEmpty ? list[0] : null;
}

int num1 = 17;
int num2 = 3;
double num3 = 17.2;
double num4 = 5.3;
String myName = "Mbebeta";
List myFriends = ["John", "Mary", "James", "Grace", "Henry", "Isabella"];
