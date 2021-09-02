import 'package:flutter/material.dart';
import 'Documentos/home_page.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Portifolio',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
