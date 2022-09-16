import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_app/bloc/todo_bloc.dart';


class AddButton extends StatelessWidget {
  final Color color;
  const AddButton({super.key, required this.color});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        backgroundColor: color,
      ),
      onPressed: () {
        context.read<TodoBloc>().add(AddListEvent());
      },
      child: const Text(
        'Add',
        style: TextStyle(color: Colors.black),
      ),
    );
  }
}
