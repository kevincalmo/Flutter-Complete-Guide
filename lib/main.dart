import 'package:flutter/material.dart';

// main() {
//   runApp(MyApp());
// }

main() => runApp(MyApp());

// Création du design de l'application.
// En extends StatelessWidget, impossible d'y ajouter un état
class MyApp extends StatelessWidget {
  /**/
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: [
            Text('The question'),
            ElevatedButton(
              child: Text('Réponse 1'),
              onPressed: () => print('Réponse 1'),
            ),
            ElevatedButton(
              child: Text('Réponse 2'),
              onPressed: () => print('Réponse 2'),
            ),
            ElevatedButton(
              child: Text('Réponse 3'),
              onPressed: () => print('Réponse 3'),
            ),
          ],
        ),
      ),
    );
  }
}
