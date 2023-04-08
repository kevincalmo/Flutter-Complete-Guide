import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/quiz.dart';
import 'package:flutter_complete_guide/result.dart';
import './answer.dart';
import './question.dart';

// main() {
//   runApp(MyApp());
// }

main() => runApp(MyApp());

// Création du design de l'application.
// En extends StatelessWidget, impossible d'y ajouter un état
class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  final questions = [
    {
      'questionText': 'What\'s your favorite color ?',
      'answers': ['Black', 'Red', 'Green', 'White']
    },
    {
      'questionText': 'What\'s your favorite animal ?',
      'answers': ['Rabbit', 'Snake', 'Elephant', 'Lion']
    },
    {
      'questionText': 'What\'s your favorite meal ?',
      'answers': ['Chicken', 'Fish', 'Egg', 'Melon']
    },
  ];

  void _answerQuestion() {
    if (_questionIndex < questions.length) {
      setState(() {
        _questionIndex++;
      });
      print(_questionIndex);
    }
  }

  /**/
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: _questionIndex < questions.length
            ? Quiz(
                questionText: questions[_questionIndex]['questionText'],
                answers: questions[_questionIndex]['answers'],
                questionAnswerFunction: _answerQuestion,
              )
            : Result(
                textOutput: 'You did it !',
              ),
      ),
    );
  }
}
