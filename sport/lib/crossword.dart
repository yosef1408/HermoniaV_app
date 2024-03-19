import 'package:flutter/material.dart';

class CrosswordPuzzle extends StatefulWidget {
  @override
  _CrosswordPuzzleState createState() => _CrosswordPuzzleState();
}

class _CrosswordPuzzleState extends State<CrosswordPuzzle> {
  // Crossword puzzle grid
  List<List<String>> crosswordGrid = [
    ['C', 'R', 'O', 'S', 'S', 'W', 'O', 'R', 'D'],
    ['E', '', '', '', '', '', '', '', ''],
    ['L', '', '', '', '', '', '', '', ''],
    ['L', '', '', '', '', '', '', '', ''],
    ['W', '', '', '', '', '', '', '', ''],
    ['O', '', '', '', '', '', '', '', ''],
    ['R', '', '', '', '', '', '', '', ''],
    ['D', '', '', '', '', '', '', '', ''],
  ];

  // Solution grid
  final List<List<String>> solutionGrid = [
    ['C', 'R', 'O', 'S', 'S', 'W', 'O', 'R', 'D'],
    ['E', 'H', 'E', 'L', 'L', 'O', 'W', 'O', 'R'],
    ['L', '', '', '', '', '', '', '', ''],
    ['L', '', '', '', '', '', '', '', ''],
    ['W', '', '', '', '', '', '', '', ''],
    ['O', '', '', '', '', '', '', '', ''],
    ['R', '', '', '', '', '', '', '', ''],
    ['D', '', '', '', '', '', '', '', ''],
  ];

  // List of answers (clues and their respective answers)
  final List<Map<String, String>> answers = [
    {'Across': '1. Greeting in English', 'Word': 'HELLO'},
    {'Down': '2. First letter of the alphabet', 'Word': 'A'},
  ];

  // Track revealed solution
  bool revealSolution = false;

  // Controllers for text fields
  List<List<TextEditingController>> controllers = List.generate(
    8,
    (index) => List.generate(
      9,
      (subIndex) => TextEditingController(),
    ),
  );

  @override
  void dispose() {
    for (var row in controllers) {
      for (var controller in row) {
        controller.dispose();
      }
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Crossword Puzzle'),
      ),
      body: Column(
        children: [
          Table(
            border: TableBorder.all(),
            children: List.generate(
              crosswordGrid.length,
              (index) => TableRow(
                children: List.generate(
                  crosswordGrid[index].length,
                  (subIndex) => TableCell(
                    child: revealSolution
                        ? Text(
                            solutionGrid[index][subIndex],
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          )
                        : TextField(
                            controller: controllers[index][subIndex],
                            textAlign: TextAlign.center,
                            maxLength: 1,
                            decoration: InputDecoration(
                              counterText: '',
                              border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                              ),
                            ),
                            onChanged: (text) {
                              setState(() {
                                crosswordGrid[index][subIndex] = text;
                              });
                            },
                          ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              setState(() {
                revealSolution = true;
              });
            },
            child: Text('Reveal Solution'),
          ),
        ],
      ),
    );
  }
}
