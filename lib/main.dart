import 'package:flutter/material.dart';

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
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questionIndex = 0;

  void answerQuestion() {
    setState(() {
      questionIndex++;
    });
    print(questionIndex);
  }

  /**/
  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favorite color ?',
      'What\'s your favorite animal ?'
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: [
            Text(questions[questionIndex]),
            ElevatedButton(
              child: Text('Réponse 1'),
              onPressed: answerQuestion,
            ),
            ElevatedButton(
              child: Text('Réponse 2'),
              onPressed: answerQuestion,
            ),
            ElevatedButton(
              child: Text('Réponse 3'),
              onPressed: answerQuestion,
            ),
          ],
        ),
      ),
    );
  }
}
