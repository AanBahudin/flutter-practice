import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final Function answerQuestion;
  final List theQuestions;
  final int questionIndex;

  Quiz(this.answerQuestion, this.theQuestions, this.questionIndex);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          theQuestions[questionIndex]['questionText'] as String,
        ),
        ...(theQuestions[questionIndex]['answers'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(answerQuestion, answer['text'], answer['score']);
        }).toList()
      ],
    );
  }
}
