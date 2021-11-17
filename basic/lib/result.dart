import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;
  final VoidCallback restartQuiz;

  const Result(this.totalScore, this.restartQuiz, {Key? key}) : super(key: key);

  String get resultText {
    return 'Your score: $totalScore';
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultText,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
          ),
          TextButton(
            onPressed: restartQuiz,
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.all(16),
              onPrimary: Colors.green,
            ),
            child: Text('Restart quiz'),
          )
        ],
      ),
    );
  }
}
