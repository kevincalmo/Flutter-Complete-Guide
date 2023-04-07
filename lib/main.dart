import 'package:flutter/material.dart';

main() {
  runApp(MyApp());
}

// Création du design de l'application.
// En extends StatelessWidget, impossible d'y ajouter un état
class MyApp extends StatelessWidget {
  /**/
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Text('Hello!'),
    );
  }
}
