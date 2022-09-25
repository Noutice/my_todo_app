import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'todo_event.dart';
part 'todo_state.dart';

class TodoBloc extends Bloc<TodoEvent, TodoState> {
  TodoBloc() : super(TodoState()) {
    on<AddListEvent>((AddListEvent event, Emitter<TodoState> emit) {
      int k = 0;
      bool x = true;
      for (int i = 0; i < event.controller.text.length; i++) {
        if (event.controller.text[i] == ' ') {
          x = false;
          k = i;
        } else {
          break;
        }
      }
      String text = event.controller.text
          .substring(x ? k : k + 1, event.controller.text.length);
      if (state.todoList.length == 5 || text.isEmpty) return;
      emit(
        state.changeWith(
          todoList: List<Todo>.from(state.todoList)
            ..add(
              Todo(
                todo: text,
                complectedColor: const Color(0xFF968E78),
              ),
            ),
          isDisabled: state.todoList.length + 1 == 5 ? true : false,
        ),
      );
      event.controller.clear();
    });

    on<RemoveListEvent>((RemoveListEvent event, Emitter<TodoState> emit) {
      emit(
        state.changeWith(
          todoList: List<Todo>.from(state.todoList)..removeAt(event.index),
          isDisabled: false,
        ),
      );
    });

    on<TodoComplectedEvent>(
        (TodoComplectedEvent event, Emitter<TodoState> emit) {
      state.todoList[event.index].isComplected =
          !state.todoList[event.index].isComplected;
      if (state.todoList[event.index].isComplected) {
        state.todoList[event.index].complectedColor = const Color(0xFFA8F582);
      } else {
        state.todoList[event.index].complectedColor = const Color(0xFF968E78);
      }
      emit(state.changeWith(
        isDisabled: state.todoList.length == 5 ? true : false,
      ));
    });
  }
}
