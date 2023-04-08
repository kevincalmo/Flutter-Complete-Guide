import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final String questionText;
  final Function questionAnswerFunction;
  final List<Map<String, Object>> answers;

  Quiz({this.questionText, this.questionAnswerFunction, this.answers});

  @override
  Widget build(BuildContext contenxt) {
    return Column(
      children: [
        Question(
          questionText: questionText,
        ),
        ...(answers).map((answer) {
          return Answer(
            answerText: answer['text'] as String,
            answerFunction: () => questionAnswerFunction(answer['score']),
          );
        }).toList(),
      ],
    );
  }
}
