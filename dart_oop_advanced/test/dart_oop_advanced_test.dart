import 'package:dart_oop_advanced/dart_oop_advanced.dart';
import 'package:test/test.dart';

void main() {
  group('Person', () {
    test('should create a Person instance with correct name and age', () {
      Person person = Person('John', 25);
      expect(person.name, 'John');
      expect(person.age, 25);
    });

    test('should print correct information', () {
      Person person = Person('John', 25);
      expect(() => person.printInfo(), prints('Name: John, Age: 25\n'));
    });
  });

  group('Student', () {
    test(
        'should create a Student instance with correct name, age, and grade level',
        () {
      Student student = Student('John', 16, 10);
      expect(student.name, 'John');
      expect(student.age, 16);
      expect(student.gradeLevel, 10);
    });

    test('should print correct information', () {
      Student student = Student('John', 16, 10);
      expect(() => student.printInfo(),
          prints('Student Name: John, Age: 16, Grade Level: 10\n'));
    });
  });

  group('Teacher', () {
    test('should create a Teacher instance with correct name, age, and subject',
        () {
      Teacher teacher = Teacher('Jane', 30, 'Mathematics');
      expect(teacher.name, 'Jane');
      expect(teacher.age, 30);
      expect(teacher.subject, 'Mathematics');
    });

    test('should print correct information', () {
      Teacher teacher = Teacher('Jane', 30, 'Mathematics');
      expect(() => teacher.printInfo(),
          prints('Teacher Name: Jane, Age: 30, Subject: Mathematics\n'));
    });
  });

  group('School', () {
    test('should create and print student and teacher information', () {
      School school = School();
      expect(
          () => school.createAndPrint(),
          prints('Student Name: Jukula Mwale, Age: 16, Grade Level: 10\n'
              'Teacher Name: Chikumbi Zulu, Age: 30, Subject: Mathematics\n'));
    });
  });
}
