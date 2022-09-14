import 'package:flutter/material.dart';
import 'package:todo_app/components/button.dart';
import 'package:todo_app/components/input_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: const [
            SizedBox(height: 20),
            InputWidget(),
            Button(),
          ],
        ),
      ),
    );
  }
}
