import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final String questionText;
  final VoidCallback questionAnswerFunction;
  final List<Map<String, Object>> answers;

  Quiz({this.questionText, this.questionAnswerFunction, this.answers});

  @override
  Widget build(BuildContext contenxt) {
    return Column(
      children: [
        Question(
          questionText: questionText,
        ),
        ...(answers as List<String>).map((answer) {
          return Answer(
            answerText: answer,
            answerFunction: questionAnswerFunction,
          );
        }).toList(),
      ],
    );
  }
}
