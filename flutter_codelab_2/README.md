# Colab Word Pair App

Namer App is a simple Flutter application that allows users to generate random word pairs and mark them as favorites. The app provides two main screens: the generator screen, where users can generate new word pairs and mark them as favorites, and the favorites screen, where users can view and manage their favorite word pairs.

## Features

- Generate random word pairs
- Mark word pairs as favorites
- View and manage favorite word pairs

## Installation

To run the Namer App, you need to have Flutter installed on your system. Follow the steps below to install and run the app:

1. Clone the repository:

```bash
git clone https://github.com/shizoe/PLP_Dart_Flutter/flutter_codelab_2.git
```

2. Navigate to the project directory:

```bash
cd namer_app
```

3. Run the app:

```bash
flutter run
```

## Usage

Upon launching the app, you will see the home screen with a navigation rail at the left side and the main content area on the right side.

### Home Screen

- The navigation rail contains two destinations: "Home" and "Favorites".
- By default, the "Home" destination is selected, displaying the word pair generator.
- The generator screen displays a random word pair in a card format.
- Users can mark the displayed word pair as a favorite by tapping the "Like" button.
- Tapping the "Next" button generates a new random word pair.

### Favorites Screen

- Users can navigate to the "Favorites" destination in the navigation rail to view their favorite word pairs.
- If no word pairs have been marked as favorites, a message stating "No favorites yet" is displayed.
- Each favorite word pair is displayed as a list item.
- Users can delete a favorite word pair by tapping the delete icon next to it.

## Screenshots

1. Home Page.

![Screenshot 1](https://github.com/shizoe/PLP_Dart_Flutter/blob/main/flutter_codelab_2/home.png)

2. Favourite Page

![Screenshot 2](https://github.com/shizoe/PLP_Dart_Flutter/blob/main/flutter_codelab_2/fav.png)

3. Application Demo

![App Demo](https://github.com/shizoe/PLP_Dart_Flutter/blob/main/flutter_codelab_2/favword.gif)

## Dependencies

The Namer App uses the following dependencies:

- `english_words`: Provides functionality to generate random English word pairs.
- `provider`: State management library for managing app state and data.

## Structure

The Namer App follows a simple structure:

- **main.dart**: Entry point of the application containing the main widget tree setup.
- **MyApp**: Root widget of the application responsible for providing the app state using `ChangeNotifierProvider`.
- **MyAppState**: A `ChangeNotifier` class that manages the state of the application, including the current word pair and the list of favorite word pairs.
- **MyHomePage**: StatefulWidget representing the home screen of the application.
- **GeneratorPage**: StatelessWidget responsible for displaying the word pair generator and handling user interactions.
- **FavoritesPage**: StatelessWidget responsible for displaying the list of favorite word pairs and handling user interactions.

## Testing

The Namer App includes unit tests to ensure the correctness of its functionality. You can run the tests using the following command:

```bash
flutter test
```

## Contributing

Contributions to the Namer App are welcome! If you find any issues or have suggestions for improvement, feel free to open an issue or submit a pull request on GitHub.

## License

The Namer App is open-source software licensed under the [MIT License](LICENSE).

---

This README provides an overview of the Namer App, including its features, installation instructions, usage guide, structure, dependencies, testing, contribution guidelines, and license information. For more details, refer to the source code and documentation available on GitHub.
