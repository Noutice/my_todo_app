import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_app/bloc/todo_bloc.dart';

class CancelButton extends StatelessWidget {
  final RemoveListEvent onPressed;
  const CancelButton({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        backgroundColor: const Color(0xFFFC8077),
      ),
      onPressed: () => context.read<TodoBloc>().add(onPressed),
      child: const Icon(
        Icons.cancel_outlined,
        color: Colors.black,
      ),
    );
  }
}
