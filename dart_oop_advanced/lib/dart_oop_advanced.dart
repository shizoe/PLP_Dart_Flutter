class Person {
  String name;
  int age;

  Person(this.name, this.age);

  void printInfo() {
    print('Name: $name, Age: $age');
  }
}

class Student extends Person {
  int gradeLevel;

  Student(String name, int age, this.gradeLevel) : super(name, age);

  @override
  void printInfo() {
    print('Student Name: $name, Age: $age, Grade Level: $gradeLevel');
  }
}

class Teacher extends Person {
  String subject;

  Teacher(String name, int age, this.subject) : super(name, age);

  @override
  void printInfo() {
    print('Teacher Name: $name, Age: $age, Subject: $subject');
  }
}

class School {
  void createAndPrint() {
    Student student = Student('Jukula Mwale', 16, 10);
    student.printInfo();

    Teacher teacher = Teacher('Chikumbi Zulu', 30, 'Mathematics');
    teacher.printInfo();
  }
}
