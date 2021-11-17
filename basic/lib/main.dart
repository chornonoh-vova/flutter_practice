import 'package:basic/result.dart';
import 'package:flutter/material.dart';

import './quiz.dart';

void main() => runApp(BasicApp());

class BasicApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _BasicAppState();
}

class _BasicAppState extends State<BasicApp> {
  final _questions = const [
    {
      'questionText': 'What\'s your favourite color?',
      'answers': [
        {'text': 'Black', 'score': 1},
        {'text': 'Red', 'score': 2},
        {'text': 'Green', 'score': 3},
        {'text': 'White', 'score': 4},
      ],
    },
    {
      'questionText': 'What\'s your favourite animal?',
      'answers': [
        {'text': 'Rabbit', 'score': 1},
        {'text': 'Dog', 'score': 2},
        {'text': 'Cat', 'score': 3},
        {'text': 'Elephant', 'score': 4},
      ],
    },
    {
      'questionText': 'What\'s your favourite game?',
      'answers': [
        {'text': 'Spider man', 'score': 1},
        {'text': 'Need for speed', 'score': 2},
        {'text': 'Horizon zero dawn', 'score': 3},
        {'text': 'God of war', 'score': 4},
      ],
    },
  ];
  int _questionIndex = 0;
  int _totalScore = 0;

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

  void _rezetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My first app'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(_questions, _questionIndex, _answerQuestion)
            : Result(_totalScore, _rezetQuiz),
      ),
    );
  }
}
