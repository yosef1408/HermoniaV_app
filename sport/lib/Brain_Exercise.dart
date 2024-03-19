/*import 'package:flutter/material.dart';
import 'dart:math';

class ChessPage extends StatefulWidget {
  @override
  _ChessPageState createState() => _ChessPageState();
}

class _ChessPageState extends State<ChessPage> {
  List<List<String>> board = List.generate(8, (i) => List.filled(8, ''));
  bool whiteTurn = true;
  bool gameOver = false;
  List<List<bool>> validMoveHighlight =
      List.generate(8, (i) => List.filled(8, false));
  int selectedRow = -1;
  int selectedCol = -1;

  @override
  void initState() {
    super.initState();
    initializeBoard();
    whiteTurn = true;
    gameOver = false;
    initializeHighlight();
  }

  void initializeBoard() {
    board = List.generate(8, (i) => List.filled(8, ''));
    // Set up the initial board state
    board[0] = ['r', 'n', 'b', 'q', 'k', 'b', 'n', 'r'];
    board[1] = List.filled(8, 'p');
    board[6] = List.filled(8, 'P');
    board[7] = ['R', 'N', 'B', 'Q', 'K', 'B', 'N', 'R'];
  }

  void initializeHighlight() {
    validMoveHighlight = List.generate(8, (i) => List.filled(8, false));
  }

  void movePiece(int fromRow, int fromCol, int toRow, int toCol) {
    setState(() {
      board[toRow][toCol] = board[fromRow][fromCol];
      board[fromRow][fromCol] = '';
      whiteTurn = !whiteTurn;
      selectedRow = toRow;
      selectedCol = toCol;
      initializeHighlight();
    });
  }

  void makeComputerMove() {
    // Simple AI: Randomly select a valid move
    List<List<int>> validMoves = [];
    for (int i = 0; i < 8; i++) {
      for (int j = 0; j < 8; j++) {
        if ((whiteTurn && board[i][j].toUpperCase() == board[i][j]) ||
            (!whiteTurn && board[i][j].toLowerCase() == board[i][j])) {
          for (int m = 0; m < 8; m++) {
            for (int n = 0; n < 8; n++) {
              if (isLegalMove(i, j, m, n)) {
                validMoves.add([i, j, m, n]);
              }
            }
          }
        }
      }
    }
    if (validMoves.isNotEmpty) {
      Random random = Random();
      List<int> move = validMoves[random.nextInt(validMoves.length)];
      movePiece(move[0], move[1], move[2], move[3]);
    }
  }

  bool isLegalMove(int fromRow, int fromCol, int toRow, int toCol) {
    String piece = board[fromRow][fromCol];
    String targetPiece = board[toRow][toCol];

    // Check if the destination square is occupied by a piece of the same color
    if ((whiteTurn && targetPiece.toUpperCase() == targetPiece) ||
        (!whiteTurn && targetPiece.toLowerCase() == targetPiece)) {
      return false;
    }

    // Implement legal move logic based on the type of piece
    switch (piece.toLowerCase()) {
      case 'p': // Pawn
        if (whiteTurn) {
          if (fromCol == toCol && toRow == fromRow - 1 && targetPiece.isEmpty) {
            return true; // Move one square forward
          } else if (fromRow == 6 &&
              fromCol == toCol &&
              toRow == 4 &&
              targetPiece.isEmpty &&
              board[5][toCol].isEmpty) {
            return true; // Move two squares forward from the starting position
          } else if (toRow == fromRow - 1 &&
              (toCol == fromCol - 1 || toCol == fromCol + 1) &&
              targetPiece.isNotEmpty) {
            return true; // Capture diagonally
          }
        } else {
          if (fromCol == toCol && toRow == fromRow + 1 && targetPiece.isEmpty) {
            return true; // Move one square forward
          } else if (fromRow == 1 &&
              fromCol == toCol &&
              toRow == 3 &&
              targetPiece.isEmpty &&
              board[2][toCol].isEmpty) {
            return true; // Move two squares forward from the starting position
          } else if (toRow == fromRow + 1 &&
              (toCol == fromCol - 1 || toCol == fromCol + 1) &&
              targetPiece.isNotEmpty) {
            return true; // Capture diagonally
          }
        }
        break;
      case 'r': // Rook
        if (fromRow == toRow) {
          for (int col = min(fromCol, toCol) + 1;
              col < max(fromCol, toCol);
              col++) {
            if (board[fromRow][col].isNotEmpty) return false;
          }
          return true; // Horizontal move
        } else if (fromCol == toCol) {
          for (int row = min(fromRow, toRow) + 1;
              row < max(fromRow, toRow);
              row++) {
            if (board[row][fromCol].isNotEmpty) return false;
          }
          return true; // Vertical move
        }
        break;
      case 'n': // Knight
        int rowDiff = (fromRow - toRow).abs();
        int colDiff = (fromCol - toCol).abs();
        return (rowDiff == 2 && colDiff == 1) || (rowDiff == 1 && colDiff == 2);
      case 'b': // Bishop
        if ((fromRow - toRow).abs() == (fromCol - toCol).abs()) {
          int rowIncrement = fromRow < toRow ? 1 : -1;
          int colIncrement = fromCol < toCol ? 1 : -1;
          int row = fromRow + rowIncrement;
          int col = fromCol + colIncrement;
          while (row != toRow && col != toCol) {
            if (board[row][col].isNotEmpty) return false;
            row += rowIncrement;
            col += colIncrement;
          }
          return true; // Diagonal move
        }
        break;
      case 'q': // Queen
        // Combine rook and bishop movement
        if ((fromRow == toRow || fromCol == toCol) ||
            (fromRow - toRow).abs() == (fromCol - toCol).abs()) {
          if (fromRow == toRow || fromCol == toCol) {
            // Rook movement
            if (fromRow == toRow) {
              for (int col = min(fromCol, toCol) + 1;
                  col < max(fromCol, toCol);
                  col++) {
                if (board[fromRow][col].isNotEmpty) return false;
              }
            } else {
              for (int row = min(fromRow, toRow) + 1;
                  row < max(fromRow, toRow);
                  row++) {
                if (board[row][fromCol].isNotEmpty) return false;
              }
            }
            return true; // Horizontal or vertical move
          } else {
            // Bishop movement
            int rowIncrement = fromRow < toRow ? 1 : -1;
            int colIncrement = fromCol < toCol ? 1 : -1;
            int row = fromRow + rowIncrement;
            int col = fromCol + colIncrement;
            while (row != toRow && col != toCol) {
              if (board[row][col].isNotEmpty) return false;
              row += rowIncrement;
              col += colIncrement;
            }
            return true; // Diagonal move
          }
        }
        break;
      case 'k': // King
        int rowDiff = (fromRow - toRow).abs();
        int colDiff = (fromCol - toCol).abs();
        return rowDiff <= 1 && colDiff <= 1;
    }
    return false;
  }

  bool isCheckmate() {*/
// Find the king's position
/* int kingRow, kingCol;
    String kingPiece = whiteTurn ? 'K' : 'k';
    for (int i = 0; i < 8; i++) {
      for (int j = 0; j < 8; j++) {
        if (board[i][j] == kingPiece) {
          kingRow = i;
          kingCol = j;
          break;
        }
      }
    }

    // Check if the king is in check
    if (isKingInCheck(kingRow, kingCol)) {
      // Check if the king has no legal moves
      for (int i = kingRow - 1; i <= kingRow + 1; i++) {
        for (int j = kingCol - 1; j <= kingCol + 1; j++) {
          if (i >= 0 &&
              i < 8 &&
              j >= 0 &&
              j < 8 &&
              (i != kingRow || j != kingCol)) {
            if (isLegalMove(kingRow, kingCol, i, j)) {
              return false; // King can escape check
            }
          }
        }
      }
      // Check if any other piece can block or capture the attacking piece
      for (int i = 0; i < 8; i++) {
        for (int j = 0; j < 8; j++) {
          if ((whiteTurn && board[i][j].toUpperCase() == board[i][j]) ||
              (!whiteTurn && board[i][j].toLowerCase() == board[i][j])) {
            for (int m = 0; m < 8; m++) {
              for (int n = 0; n < 8; n++) {
                if (isLegalMove(i, j, kingRow, kingCol)) {
                  return false; // Another piece can block or capture the attacking piece
                }
              }
            }
          }
        }
      }
      return true; // King is in checkmate
    }*/
/*   return false; // King is not in checkmate
  }*/

//bool isStalemate() {
// Check if the player whose turn it is has no legal moves
/* for (int i = 0; i < 8; i++) {
      for (int j = 0; j < 8; j++) {
        if ((whiteTurn && board[i][j].toUpperCase() == board[i][j]) ||
            (!whiteTurn && board[i][j].toLowerCase() == board[i][j])) {
          for (int m = 0; m < 8; m++) {
            for (int n = 0; n < 8; n++) {
              if (isLegalMove(i, j, m, n)) {
                return false; // Player has a legal move
              }
            }
          }
        }
      }
    }*/
/*  return true; // Player has no legal moves, stalemate
  }*/

/*void checkGameOver() {
    if (isCheckmate()) {
      // Handle checkmate
      gameOver = true;
      print(
          whiteTurn ? "Black wins by checkmate!" : "White wins by checkmate!");
    } else if (isStalemate()) {
      // Handle stalemate
      gameOver = true;
      print("Game ended in a draw by stalemate!");
    }
  }

  void highlightValidMoves(int row, int col) {
    for (int i = 0; i < 8; i++) {
      for (int j = 0; j < 8; j++) {
        validMoveHighlight[i][j] = isLegalMove(row, col, i, j);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chess Game'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              whiteTurn ? "Your turn" : "Computer's turn",
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 20),
            Container(
              height: 400,
              width: 400,
              decoration: BoxDecoration(
                border: Border.all(),
              ),
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 8,
                ),
                itemCount: 64,
                itemBuilder: (context, index) {
                  int row = index ~/ 8;
                  int col = index % 8;
                  return GestureDetector(
                    onTap: () {
                      if ((whiteTurn &&
                              board[row][col].toUpperCase() ==
                                  board[row][col]) ||
                          (!whiteTurn &&
                              board[row][col].toLowerCase() ==
                                  board[row][col])) {
                        setState(() {
                          selectedRow = row;
                          selectedCol = col;
                          highlightValidMoves(row, col);
                        });
                      } else if (selectedRow != -1 &&
                          selectedCol != -1 &&
                          validMoveHighlight[row][col]) {
                        movePiece(selectedRow, selectedCol, row, col);
                        checkGameOver();
                        if (!gameOver) {
                          makeComputerMove();
                          checkGameOver();
                        }
                      }
                    },
                    child: Container(
                      color: (row + col) % 2 == 0
                          ? Colors.grey[300]
                          : Colors.brown[200],
                      child: Center(
                        child: Text(
                          board[row][col],
                          style: TextStyle(
                            fontSize: 24,
                            color: validMoveHighlight[row][col]
                                ? Colors.blue
                                : (selectedRow == row && selectedCol == col
                                    ? Colors.green
                                    : Colors.black),
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
*/

import 'dart:math';
import 'chees_game_with_mate.dart';
import 'package:flutter/material.dart';
import 'crossword.dart';

class BrainExercise extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff8b379a),
        title: Text(
          'Brain Exercises',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text('Sudoku 🏁'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SudokuGame()),
              );
            },
          ),
          ListTile(
            title: Text('Chess ♟'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Chess()),
              );
            },
          ),
          ListTile(
            title: Text('Crossword Puzzlest 📕'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CrosswordPuzzle()),
              );
            },
          ),
        ],
      ),
    );
  }
}

class SudokuGame extends StatefulWidget {
  @override
  _SudokuGameState createState() => _SudokuGameState();
}

class _SudokuGameState extends State<SudokuGame> {
  late List<List<int>> _grid;
  late List<List<int>> _solution;

  @override
  void initState() {
    super.initState();
    _generateSudoku();
  }

  void _generateSudoku() {
    _grid = List.generate(9, (_) => List.filled(9, 0));
    _solution = List.generate(9, (_) => List.filled(9, 0));

    _fillDiagonal();
    _fillRemaining(0, 3);
    _copyGrid();
    _removeDigits();

    setState(() {});
  }

  void _copyGrid() {
    for (int i = 0; i < 9; i++) {
      for (int j = 0; j < 9; j++) {
        _solution[i][j] = _grid[i][j];
      }
    }
  }

  void _fillDiagonal() {
    for (int i = 0; i < 9; i += 3) {
      _fillBox(i, i);
    }
  }

  void _fillBox(int row, int col) {
    int num;
    for (int i = 0; i < 3; i++) {
      for (int j = 0; j < 3; j++) {
        do {
          num = Random().nextInt(9) + 1;
        } while (!_isSafe(row + i, col + j, num));
        _grid[row + i][col + j] = num;
      }
    }
  }

  bool _fillRemaining(int i, int j) {
    if (i == 8 && j == 6) {
      return true;
    }

    if (j >= 9) {
      i += 1;
      j = 0;
    }

    if (i < 3) {
      if (j < 3) {
        j = 3;
      }
    } else if (i < 6) {
      if (j == (i ~/ 3) * 3) {
        j += 3;
      }
    } else {
      if (j == 6) {
        i += 1;
        j = 0;
        if (i >= 9) {
          return true;
        }
      }
    }

    for (int num = 1; num <= 9; num++) {
      if (_isSafe(i, j, num)) {
        _grid[i][j] = num;
        if (_fillRemaining(i, j + 1)) {
          return true;
        }
        _grid[i][j] = 0;
      }
    }
    return false;
  }

  bool _isSafe(int row, int col, int num) {
    return _unUsedInRow(row, num) &&
        _unUsedInCol(col, num) &&
        _unUsedInBox(row, col, num);
  }

  bool _unUsedInRow(int row, int num) {
    for (int col = 0; col < 9; col++) {
      if (_grid[row][col] == num) {
        return false;
      }
    }
    return true;
  }

  bool _unUsedInCol(int col, int num) {
    for (int row = 0; row < 9; row++) {
      if (_grid[row][col] == num) {
        return false;
      }
    }
    return true;
  }

  bool _unUsedInBox(int row, int col, int num) {
    int boxStartRow = row - row % 3;
    int boxStartCol = col - col % 3;

    for (int i = 0; i < 3; i++) {
      for (int j = 0; j < 3; j++) {
        if (_grid[i + boxStartRow][j + boxStartCol] == num) {
          return false;
        }
      }
    }
    return true;
  }

  void _removeDigits() {
    int numDigitsToRemove =
        40; // Adjust the number of digits to remove as desired
    while (numDigitsToRemove > 0) {
      int row = Random().nextInt(9);
      int col = Random().nextInt(9);
      if (_grid[row][col] != 0) {
        _grid[row][col] = 0;
        numDigitsToRemove--;
      }
    }
  }

  void _revealSolution() {
    setState(() {
      _grid = _solution;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff8b379a),
        title: Text(
          'Sudoku Game',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GridView.builder(
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 9,
                  mainAxisSpacing: 2.0,
                  crossAxisSpacing: 2.0,
                ),
                itemCount: 81,
                itemBuilder: (context, index) {
                  int row = index ~/ 9;
                  int col = index % 9;
                  return GestureDetector(
                    onTap: () {
                      if (_grid[row][col] == 0) {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: Text('Choose Number'),
                              content: GridView.builder(
                                shrinkWrap: true,
                                gridDelegate:
                                    SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 3,
                                ),
                                itemCount: 9,
                                itemBuilder: (context, i) {
                                  int number = i + 1;
                                  return GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        _grid[row][col] = number;
                                      });
                                      Navigator.pop(context);
                                    },
                                    child: Container(
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          color: Colors.grey,
                                        ),
                                      ),
                                      child: Text(
                                        number.toString(),
                                        style: TextStyle(fontSize: 20.0),
                                      ),
                                    ),
                                  );
                                },
                              ),
                            );
                          },
                        );
                      }
                    },
                    child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey,
                        ),
                        color: _grid[row][col] == 0
                            ? Colors.white
                            : Colors.purple[200],
                      ),
                      child: Text(
                        _grid[row][col] == 0 ? '' : _grid[row][col].toString(),
                        style: TextStyle(
                          fontSize: 20.0,
                          color: _grid[row][col] == 0
                              ? Colors.black
                              : Colors.white,
                        ),
                      ),
                    ),
                  );
                },
              ),
              SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: _generateSudoku,
                child: Text('New Game'),
              ),
              SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: _revealSolution,
                child: Text('Reveal Solution'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
