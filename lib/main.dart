import 'package:flutter/material.dart';

import 'package:irregular_verbs/screens/home_screen.dart';
import 'package:irregular_verbs/screens/settings_screen.dart';
import 'package:irregular_verbs/screens/training_screen.dart';
import 'package:irregular_verbs/screens/verbs_list_screen.dart';

void main() {
  runApp(const Application());
}

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(),
        '/training': (context) => TrainingScreen(),
        '/verblist': (context) => VerbList(),
        '/settings': (context) => SettingsScreen(),
      },
    );
  }
}
