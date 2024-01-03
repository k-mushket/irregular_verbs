import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () => Navigator.pushNamed(context, '/training'),
                child: Text('Training'),
              ),
              TextButton(
                onPressed: () {},
                child: Text('List'),
              ),
              TextButton(
                onPressed: () {},
                child: Text('Settings'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
