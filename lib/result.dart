import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;
  final Function resetScoreAndQuiz;

  Result(this.totalScore, this.resetScoreAndQuiz);

  String get resultPharase {
    var resultText;

    if (totalScore < 12) {
      resultText = 'You Good';
    } else if (totalScore >= 12 && totalScore < 18) {
      resultText = 'Not Bad Too';
    } else {
      resultText = 'You are Bad';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: [
        Text(resultPharase,
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
        Text('Score : ' + totalScore.toString()),
        ElevatedButton(
          onPressed: resetScoreAndQuiz,
          child: Text('Restart Quiz'),
        ),
      ],
    ));
  }
}
