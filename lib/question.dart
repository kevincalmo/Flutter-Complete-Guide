import 'package:flutter/cupertino.dart';

// Création d'un widget personnalisé
class Question extends StatelessWidget {
  // création d'une variable privé, d'une propriété
  final String questionText;

  // Création du constructeur pour cette classe de widget personnalisé
  Question({this.questionText});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(
        questionText,
        style: TextStyle(fontSize: 24),
        textAlign: TextAlign.center,
      ),
    );
  }
}
