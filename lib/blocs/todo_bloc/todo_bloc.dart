import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'todo_event.dart';
part 'todo_state.dart';

class TodoBloc extends Bloc<TodoEvent, TodoState> {
  TodoBloc() : super(TodoState()) {
    on<AddListEvent>(_addList);
    on<RemoveListEvent>(_removeList);
  }
}

List<ToDo> todoList = [];
int index = 0;
final controller = TextEditingController();
TodoState state = TodoState();
bool isDisabled = false;

void _addList(AddListEvent event, Emitter<TodoState> emit) {
  if (index == 5) return;
  index++;
  if (index == 5) {
    isDisabled = true;
  }
  todoList.add(ToDo(controller.text, index));
  emit(state.copyWith(
    todoList: todoList,
    index: index,
    isDisabled: isDisabled,
  ));
}

void _removeList(RemoveListEvent event, Emitter<TodoState> emit) {
  index--;
  emit(state.copyWith(
    todoList: todoList,
    index: index,
  ));
}
