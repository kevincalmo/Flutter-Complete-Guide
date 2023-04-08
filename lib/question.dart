import 'package:flutter/cupertino.dart';

// Création d'un widget personnalisé
class Question extends StatelessWidget {
  // création d'une variable privé, d'une propriété
  String questionText;

  // Création du constructeur pour cette classe de widget personnalisé
  Question({this.questionText});

  @override
  Widget build(BuildContext context) {
    return Text(questionText);
  }
}
