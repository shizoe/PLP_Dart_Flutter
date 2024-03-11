# School Management System

This is a simple Dart program that demonstrates the implementation of a School Management System using Object-Oriented Programming concepts. The system includes classes for `Person`, `Student`, `Teacher`, and `School`.

## Classes

### Person

The `Person` class is the base class that represents a person. It has the following properties and methods:

- `name` (String): The name of the person.
- `age` (int): The age of the person.
- `printInfo()`: A method that prints the name and age of the person.

### Student

The `Student` class extends the `Person` class and represents a student. It has the following properties and methods:

- `gradeLevel` (int): The grade level of the student.
- `printInfo()` (overridden): A method that prints the student's name, age, and grade level.

### Teacher

The `Teacher` class extends the `Person` class and represents a teacher. It has the following properties and methods:

- `subject` (String): The subject taught by the teacher.
- `printInfo()` (overridden): A method that prints the teacher's name, age, and subject.

### School

The `School` class represents a school and has the following method:

- `createAndPrint()`: A method that creates instances of `Student` and `Teacher`, and calls their respective `printInfo()` methods.

## Usage

To use this program, you can create an instance of the `School` class and call the `createAndPrint()` method. This will create a student and a teacher, and print their information to the console.

Example:

```dart
void main() {
  School school = School();
  school.createAndPrint();
}
Output:

Student Name: John Doe, Age: 16, Grade Level: 10
Teacher Name: Jane Smith, Age: 30, Subject: Mathematics

```

## Contributing

Contributions to this project are welcome. If you find any issues or have suggestions for improvements, please open an issue or submit a pull request.

## License

This project is licensed under the MIT License.
