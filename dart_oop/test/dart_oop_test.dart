import 'dart:math';

import 'package:test/test.dart';
import 'package:dart_oop/dart_oop.dart';

void main() {
  group('Animal', () {
    test('Animal should eat', () {
      Animal animal = Animal('Lion');
      expect(animal.name, 'Lion');
      expect(() => animal.eat(), prints('Lion is eating.\n'));
    });
  });

  group('Dog', () {
    test('Dog should eat and bark', () {
      Dog dog = Dog('Buddy');
      expect(dog.name, 'Buddy');
      expect(() => dog.eat(), prints('Buddy is eating.\n'));
      expect(() => dog.bark(), prints('Buddy is barking.\n'));
    });
  });

  group('Cat', () {
    test('Cat should eat and play', () {
      Cat cat = Cat('Whiskers');
      expect(cat.name, 'Whiskers');
      expect(() => cat.eat(), prints('Whiskers is chewing.\n'));
      expect(() => cat.play(), prints('Whiskers is playing.\n'));
    });
  });

  group('Bird', () {
    test('Bird should eat', () {
      Bird bird = Bird('Sparrow');
      expect(bird.name, 'Sparrow');
      expect(() => bird.eat(), prints('Sparrow is pecking.\n'));
    });
  });

  group('createAnimalsFromFile', () {
    test('should create animals from file', () {
      List<Animal> animals = createAnimalsFromFile('test.json');
      expect(animals.length, 3);
      expect(animals[0].name, 'Buddy');
      expect(animals[0] is Dog, true);

      expect(animals[1].name, 'Whiskers');
      expect(animals[1] is Cat, true);
      expect(animals[2].name, 'Sparrow');
      expect(animals[2] is Bird, true);
    });
  });
}
