import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final String textOutput;

  Result({this.textOutput});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(textOutput),
    );
  }
}
