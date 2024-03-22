import 'package:flutter/material.dart';
import 'package:flutter_codelab_1/main.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:provider/provider.dart';
import 'package:english_words/english_words.dart';

void main() {
  group('MyApp', () {
    // Test to ensure that MyHomePage is rendered
    testWidgets('renders MyHomePage', (WidgetTester tester) async {
      await tester.pumpWidget(ChangeNotifierProvider(
        create: (context) => MyAppState(),
        child: MaterialApp(
          home: MyApp(),
        ),
      ));

      expect(find.byType(MyHomePage), findsOneWidget);
    });

    testWidgets('renders GeneratorPage by default',
        (WidgetTester tester) async {
      await tester.pumpWidget(ChangeNotifierProvider(
        create: (context) => MyAppState(),
        child: MaterialApp(
          home: MyHomePage(),
        ),
      ));

      expect(find.byType(GeneratorPage), findsOneWidget);
    });

    testWidgets('renders FavoritesPage when selected',
        (WidgetTester tester) async {
      await tester.pumpWidget(ChangeNotifierProvider(
        create: (context) => MyAppState(),
        child: MaterialApp(
          home: MyHomePage(),
        ),
      ));

      await tester.tap(find.text('Favorites'));
      await tester.pump();

      expect(find.byType(FavoritesPage), findsOneWidget);
    });

    testWidgets('favorites toggle correctly', (WidgetTester tester) async {
      final appState = MyAppState();
      final pair = WordPair.random();
      appState.current = pair;

      await tester.pumpWidget(ChangeNotifierProvider<MyAppState>.value(
        value: appState,
        child: MaterialApp(
          home: GeneratorPage(),
        ),
      ));

      expect(appState.favorites, isEmpty);

      await tester.tap(find.text('Like'));
      await tester.pump();

      expect(appState.favorites, contains(pair));

      await tester.tap(find.text('Like'));
      await tester.pump();

      expect(appState.favorites, isEmpty);
    });
  });
}
