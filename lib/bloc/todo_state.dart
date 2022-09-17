part of 'todo_bloc.dart';

class TodoState {
  final List<ToDo> todoList;
  final bool isDisabled;

  TodoState({
    this.isDisabled = false,
    this.todoList = const [],
  });

  TodoState copyWith({
    List<ToDo>? todoList,
    bool? isDisabled,
  }) {
    return TodoState(
      todoList: todoList ?? this.todoList,
      isDisabled: isDisabled ?? this.isDisabled,
    );
  }
}

class ToDo {
  Color complectedColor;
  final String todo;
  bool isComplected;

  ToDo(this.todo, this.complectedColor, [this.isComplected = false]);
}
