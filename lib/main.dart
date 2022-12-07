import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _myAppState();
  }
}

class _myAppState extends State<MyApp> {
  var _questionNumber = 0;
  var questions = [
    'Whats your favorite color?',
    'what is your favorite  animal?',
    'what is your favorite number?'
  ];

  void _answerQuestions(int number) {
    setState(() {
      _questionNumber = number;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My Title'),
        ),
        body: Column(
          children: [
            Question(questions[_questionNumber]),
            AnswersButton(_answerQuestions, 0),
            AnswersButton(_answerQuestions, 1),
            AnswersButton(_answerQuestions, 2),
          ],
        ),
      ),
    );
  }
}
