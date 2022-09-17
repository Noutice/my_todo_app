import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_app/bloc/todo_bloc.dart';
import 'package:todo_app/components/cancel_button_component.dart';
import 'package:todo_app/components/complected_button_component.dart';

class TodoList extends StatelessWidget {
  const TodoList({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return BlocBuilder<TodoBloc, TodoState>(
      builder: (context, state) {
        return Expanded(
          child: SizedBox(
            width: screenWidth - 40,
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount: state.todoList.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: Row(
                    children: [
                      Expanded(
                        child: RichText(
                          text: TextSpan(
                            text: '${index + 1}.  ',
                            style: const TextStyle(
                              color: Color(0xFF171717),
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                            children: [
                              TextSpan(
                                text: state.todoList[index].todo,
                                style: TextStyle(
                                  color: state.todoList[index].complectedColor,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(width: 12),
                      ComplactedButton(
                        color: state.todoList[index].complectedColor,
                        onPressed: TodoComplectedEvent(index: index),
                      ),
                      const SizedBox(width: 9),
                      CancelButton(onPressed: RemoveListEvent(index: index)),
                    ],
                  ),
                );
              },
            ),
          ),
        );
      },
    );
  }
}
