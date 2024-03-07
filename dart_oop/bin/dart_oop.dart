import 'package:dart_oop/dart_oop.dart';

void main() {
  Dog dog = Dog('Buddy');
  dog.eat();
  dog.bark();

  Bird bird = Bird('Katyeteye');
  bird.eat();

  Cat cat = Cat('Whiskers');
  cat.play();

  String filePath = 'zoefavourite.json';
  List<Animal> animals = createAnimalsFromFile(filePath);

  if (animals.isNotEmpty) {
    for (Animal animal in animals) {
      animal.eat();
    }
  } else {
    print('No animals found in the file.');
  }

  List<String> filePaths = ['birds.json', 'cats.json', 'dogs.json'];

  for (String filePath in filePaths) {
    List<Animal> animals = createAnimalsFromFile(filePath);

    if (animals.isNotEmpty) {
      for (Animal animal in animals) {
        animal.eat();
      }
    } else {
      print('No animals found in the file.');
    }
  }
}
