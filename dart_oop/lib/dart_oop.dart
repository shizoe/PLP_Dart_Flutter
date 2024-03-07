import 'dart:convert';
import 'dart:io';

class Animal {
  String name;

  Animal(this.name);

  void eat() {
    print('$name is eating.');
  }
}

class Dog extends Animal {
  Dog(String name) : super(name);

  void bark() {
    print('$name is barking.');
  }
}

// An interface for a pet
abstract class Pet extends Animal {
  Pet(super.name);

  void play();
}

// A class that implements the Pet interface
class Cat implements Pet {
  String name;

  Cat(this.name);

  @override
  void play() {
    print('$name is playing.');
  }

  @override
  void eat() {
    print('$name is chewing.');
  }
}

// A class that overrides an inherited method
class Bird extends Animal {
  Bird(String name) : super(name);

  @override
  void eat() {
    print('$name is pecking.');
  }
}

List<Animal> createAnimalsFromFile(String filePath) {
  // Read the file
  File file = File(filePath);
  String fileContent = file.readAsStringSync();
  List<Animal> animals = [];

  // Parse the JSON data
  var jsonData = jsonDecode(fileContent);

  if (jsonData is List<dynamic>) {
    // Handle the case where jsonData is a List<dynamic>
    for (var animalData in jsonData) {
      String? animalName = animalData['name'];
      String? animalType = animalData['type'];

      Animal animal = Animal('Unknown Animal');
      if (animalType?.toLowerCase() == 'dog') {
        animal = Dog(animalName!);
      } else if (animalType?.toLowerCase() == 'cat') {
        animal = Cat(animalName!);
      } else if (animalType?.toLowerCase() == 'bird') {
        animal = Bird(animalName!);
      }
      animals.add(animal);
    }
  }

  return animals;
}
