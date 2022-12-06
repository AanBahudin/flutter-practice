import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return myAppState();
  }
}

class myAppState extends State<MyApp> {
  var questionNumber = 0;
  var questions = [
    'Whats your favorite color?',
    'what is your favorite  animal?',
    'what is your favorite number?'
  ];

  void answerQuestions(int number) {
    setState(() {
      questionNumber = number;
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
            Text(questions[questionNumber]),
            ElevatedButton(
              child: Text('First Button'),
              onPressed: () => answerQuestions(0),
            ),
            ElevatedButton(
              child: Text('Second Button'),
              onPressed: () => answerQuestions(1),
            ),
            ElevatedButton(
                onPressed: () => answerQuestions(2),
                child: Text('Third Button'))
          ],
        ),
      ),
    );
  }
}
