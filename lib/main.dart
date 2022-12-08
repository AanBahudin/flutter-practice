import 'package:flutter/material.dart';

import './result.dart';
import './quiz.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetScoreAndQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    setState(() {
      score == 0 ? _questionIndex = 0 : _questionIndex = _questionIndex + 1;
      _totalScore += score;
    });
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      {
        'questionText': 'What\'s your favorite color?',
        'answers': [
          {'text': 'Black', 'score': 8},
          {'text': 'Green', 'score': 6},
          {'text': 'Red', 'score': 4},
          {'text': 'White', 'score': 2}
        ],
      },
      {
        'questionText': 'What\'s your favorite animal?',
        'answers': [
          {'text': 'Rabbit', 'score': 8},
          {'text': 'Snake', 'score': 6},
          {'text': 'Elephant', 'score': 4},
          {'text': 'Lion', 'score': 2}
        ],
      },
      {
        'questionText': 'Who\'s your favorite instructor?',
        'answers': [
          {'text': 'Max', 'score': 8},
          {'text': 'John', 'score': 6},
          {'text': 'Aan', 'score': 4},
          {'text': 'Dr. Angela Yu', 'score': 2}
        ],
      },
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz App'),
        ),
        body: _questionIndex < questions.length
            ? Quiz(_answerQuestion, questions, _questionIndex)
            : Result(_totalScore, _resetScoreAndQuiz),
      ),
    );
  }
}
