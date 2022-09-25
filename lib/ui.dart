import 'package:flutter/material.dart';
import 'package:todo_app/bloc/todo_bloc.dart';
import 'package:todo_app/components/input_bar_component.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_app/components/line_component.dart';
import 'package:todo_app/components/todo_list_component.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<TodoBloc>(
      create: (context) => TodoBloc(),
      child: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              const SizedBox(height: 12),
              InputBar(),
              const SizedBox(height: 12),
              const Line(),
              const SizedBox(height: 12),
              const TodoList(),
            ],
          ),
        ),
      ),
    );
  }
}
