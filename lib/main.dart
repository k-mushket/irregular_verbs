import 'package:flutter/material.dart';

import 'package:irregular_verbs/screens/home_screen.dart';

void main() {
  runApp(const Application());
}

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          actions: [],
        ),
        body: HomeScreen(),
      ),
    );
  }
}
