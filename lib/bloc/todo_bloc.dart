import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'todo_event.dart';
part 'todo_state.dart';

class TodoBloc extends Bloc<TodoEvent, TodoState> {
  TodoBloc() : super(TodoState()) {
    on<AddListEvent>(_addList);
    on<RemoveListEvent>(_removeList);
    on<TodoComplectedEvent>(_isComplected);
  }
}

List<ToDo> todoList = [];
int index = 0;
final controller = TextEditingController();
TodoState state = TodoState();
bool isDisabled = false;
bool isComplected = false;
Color complectedColor = const Color(0xFF968E78);

void _addList(AddListEvent event, Emitter<TodoState> emit) {
  if (index == 5) return;
  index++;
  if (index == 5) {
    isDisabled = true;
  }

  todoList.add(ToDo(controller.text, index, complectedColor: complectedColor));

  emit(state.copyWith(
    todoList: todoList,
    index: index,
    isDisabled: isDisabled,
    isComplected: isComplected,
  ));
  controller.clear();
}

void _removeList(RemoveListEvent event, Emitter<TodoState> emit) {
  if (index == 0) return;
  todoList.removeAt(event.index);
  index--;
  isDisabled = false;
  emit(state.copyWith(
    todoList: todoList,
    index: index,
    isDisabled: isDisabled,
  ));
  controller.clear();
}

void _isComplected(TodoComplectedEvent event, Emitter<TodoState> emit) {
}