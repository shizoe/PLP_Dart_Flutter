import 'package:dart_datatypes/dart_datatypes.dart';
import 'package:test/test.dart';

void main() {
  // Test to ensure the 'myAge' variable is not null and is a non-negative value
  test('Test age variable', () {
    expect(myAge, isNotNull);
    expect(myAge, isNonNegative);
  });

// Test to ensure the 'myBio' variable is not null and is not an empty string
  test('Test bio variable', () {
    expect(myBio, isNotNull);
    expect(myBio, isNotEmpty);
  });

// Test to ensure the 'myPort' variable is not null and starts with 'http'
  test('Test portfolio URL variable', () {
    expect(myPort, isNotNull);
    expect(myPort, startsWith('http'));
  });

// Test to ensure the 'mySalary' variable is not null and is a non-negative value
  test('Test salary variable', () {
    expect(mySalary, isNotNull);
    expect(mySalary, isNonNegative);
  });

// Test to ensure the 'isMarried' variable is not null and is either true or false
  test('Test marital status variable', () {
    expect(isMarried, isNotNull);
    expect(isMarried, anyOf([true, false]));
  });

// Test to ensure the 'chemResults' variable is not null and is a Map<String, int>
  test('Test chemistry results variable', () {
    expect(chemResults, isNotNull);
    expect(chemResults, isA<Map<String, int>>());
  });
}
