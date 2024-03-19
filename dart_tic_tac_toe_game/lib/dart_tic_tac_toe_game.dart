import 'dart:io';

void printBoard(List<String> board) {
  print(' ${board[0]} | ${board[1]} | ${board[2]} ');
  print('---+---+---');
  print(' ${board[3]} | ${board[4]} | ${board[5]} ');
  print('---+---+---');
  print(' ${board[6]} | ${board[7]} | ${board[8]} ');
}

int? getMove(List<String> board) {
  print('Enter your move (0-8):');
  String? input = stdin.readLineSync();
  if (input == null || input.length != 1 || int.tryParse(input) == null) {
    return null;
  }
  int move = int.parse(input);
  if (move < 0 || move > 8 || board[move] == 'X' || board[move] == 'O') {
    return null;
  }
  return move;
}

bool checkWin(List<String> board) {
  // Check rows
  for (int i = 0; i < 9; i += 3) {
    if (board[i] == board[i + 1] && board[i + 1] == board[i + 2]) {
      return true;
    }
  }
  // Check columns
  for (int i = 0; i < 3; i++) {
    if (board[i] == board[i + 3] && board[i + 3] == board[i + 6]) {
      return true;
    }
  }
  // Check diagonals
  if (board[0] == board[4] && board[4] == board[8]) {
    return true;
  }
  if (board[2] == board[4] && board[4] == board[6]) {
    return true;
  }
  return false;
}

bool checkTie(List<String> board) {
  for (String square in board) {
    if (square != 'X' && square != 'O') {
      return false;
    }
  }
  return true;
}

void playGame() {
  while (true) {
    List<String> board = ['0', '1', '2', '3', '4', '5', '6', '7', '8'];
    bool playerX = true;

    while (true) {
      printBoard(board);
      print(playerX ? 'Player X\'s turn' : 'Player O\'s turn');

      int? move = getMove(board);
      if (move == null) {
        print('Invalid move, try again.');
        continue;
      }

      board[move] = playerX ? 'X' : 'O';
      playerX = !playerX;
      if (checkWin(board)) {
        printBoard(board);
        print(playerX ? 'Player O wins!' : 'Player X wins!');
        break;
      }
      if (checkTie(board)) {
        printBoard(board);
        print('It\'s a tie!');
        break;
      }
    }

    print('Press 1 to play again, or any other key to exit.');
    String? input = stdin.readLineSync();
    if (input != '1') {
      break;
    }
  }
}
