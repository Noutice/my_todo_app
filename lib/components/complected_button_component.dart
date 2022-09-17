import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_app/bloc/todo_bloc.dart';

class ComplactedButton extends StatelessWidget {
  final TodoComplectedEvent onPressed;
  final Color color;
  const ComplactedButton(
      {super.key, required this.color, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        backgroundColor: color,
      ),
      onPressed: () {
        context.read<TodoBloc>().add(onPressed);
      },
      child: const Icon(
        Icons.beenhere_outlined,
        color: Colors.black,
      ),
    );
  }
}
