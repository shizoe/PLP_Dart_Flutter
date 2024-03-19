# Tic Tac Toe Game

This is a simple command-line implementation of the classic Tic Tac Toe game written in Dart.

## How to Play

1. Run the Dart program.
2. The game will display the Tic Tac Toe board with numbered positions from 0 to 8.
3. Players take turns to make their move by entering a number representing the position where they want to place their symbol ('X' or 'O').
4. The game will continue until one player wins or the game ends in a tie.
5. After each game, you'll have the option to play again by entering '1' or exit by entering any other key.

## Functions

### `printBoard(List<String> board)`

Prints the Tic Tac Toe board with the current state.

### `int? getMove(List<String> board)`

Gets the move from the current player by prompting for input. Returns the selected position if valid, otherwise returns `null`.

### `bool checkWin(List<String> board)`

Checks if the current state of the board represents a winning condition for any player. Returns `true` if there's a winner, otherwise returns `false`.

### `bool checkTie(List<String> board)`

Checks if the game has ended in a tie. Returns `true` if there's a tie, otherwise returns `false`.

### `void playGame()`

Main function to run the Tic Tac Toe game. Manages the game loop, player turns, and end conditions.

## How to Run

Ensure you have Dart installed on your machine. Then, run the Dart program containing the Tic Tac Toe code. You can play the game directly in the command line interface.

## Contributing

Contributions to this project are welcome! Feel free to submit issues or pull requests if you find any bugs or have suggestions for improvements.
