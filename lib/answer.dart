import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import './main.dart';

class AnswersButton extends StatelessWidget {
  final Function questionHandler;
  final int questionIndex;

  AnswersButton(this.questionHandler, this.questionIndex);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: (ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.blue),
        ),
        child: Text(
          'Question ' + (1 + this.questionIndex).toString(),
          style: TextStyle(color: Colors.white),
        ),
        onPressed: () => questionHandler(questionIndex),
      )),
    );
  }
}
