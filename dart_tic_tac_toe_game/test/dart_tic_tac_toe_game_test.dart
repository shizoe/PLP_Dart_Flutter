import 'dart:io';
import 'package:dart_tic_tac_toe_game/dart_tic_tac_toe_game.dart';
import 'package:test/test.dart';
import 'package:mocktail/mocktail.dart';

class MockStdin extends Mock implements Stdin {}

void main() {
  test('Test printBoard', () {
    List<String> board = ['0', '1', '2', '3', '4', '5', '6', '7', '8'];
    // Since printBoard() doesn't return anything, we can't directly test its output.
    // However, we can test that it doesn't throw an error when called.
    expect(() => printBoard(board), returnsNormally);
  });

  test('checkWin should return true for a winning board', () {
    List<String> board = ['X', 'X', 'X', '3', '4', '5', '6', '7', '8'];
    expect(checkWin(board), isTrue);
  });

  test('checkWin should return false for a non-winning board', () {
    List<String> board = ['0', '1', '2', '3', '4', '5', '6', '7', '8'];
    expect(checkWin(board), isFalse);
  });

  test('checkTie should return true for a full board', () {
    List<String> board = ['X', 'O', 'X', 'O', 'X', 'O', 'O', 'X', 'O'];
    expect(checkTie(board), isTrue);
  });

  test('checkTie should return false for a board with empty spaces', () {
    List<String> board = ['0', '1', '2', '3', '4', '5', '6', '7', '8'];
    expect(checkTie(board), isFalse);
  });
}

captureOutput(Null Function() param0) {}
