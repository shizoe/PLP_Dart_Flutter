import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:english_words/english_words.dart';
import 'package:flutter_codelab_2/main.dart';

// Mock class for MyAppState
class MockMyAppState extends Mock implements MyAppState {}

void main() {
  group('MyApp Widget Tests', () {
    testWidgets('Test that MyApp builds', (WidgetTester tester) async {
      await tester.pumpWidget(MyApp());
      expect(find.byType(MaterialApp), findsOneWidget);
    });

    testWidgets('Test that BigCard builds', (WidgetTester tester) async {
      await tester.pumpWidget(MaterialApp(
        home: BigCard(pair: WordPair('Test', 'Word')),
      ));
      expect(find.byType(Card), findsOneWidget);
    });
  });

  group('MyAppState Tests', () {
    test('Test getNext', () {
      final appState = MyAppState();
      final initialPair = appState.current;
      appState.getNext();
      expect(appState.current, isNot(equals(initialPair)));
    });

    test('Test toggleFavorite', () {
      final appState = MyAppState();
      final initialFavoritesCount = appState.favorites.length;
      appState.toggleFavorite(); // Adds current pair to favorites
      expect(appState.favorites.length, equals(initialFavoritesCount + 1));
      appState.toggleFavorite(); // Removes current pair from favorites
      expect(appState.favorites.length, equals(initialFavoritesCount));
    });

    test('Test deleteFavorite', () {
      final appState = MyAppState();
      appState.favorites
          .addAll([WordPair('Test1', 'Word1'), WordPair('Test2', 'Word2')]);
      final initialFavoritesCount = appState.favorites.length;
      appState.deleteFavorite(0);
      expect(appState.favorites.length, equals(initialFavoritesCount - 1));
    });
  });
}
