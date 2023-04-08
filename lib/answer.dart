import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String answerText;
  final VoidCallback answerFunction;

  Answer({this.answerText, this.answerFunction});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.orange)),
        child: Text(answerText),
        onPressed: answerFunction,
      ),
    );
  }
}
