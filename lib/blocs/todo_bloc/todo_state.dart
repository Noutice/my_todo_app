part of 'todo_bloc.dart';

class TodoState {
  final bool isDisabled;
  final List<ToDo> todoList;
  final int index;

  TodoState({
    this.isDisabled = false,
    this.index = 0,
    this.todoList = const [],
  });

  TodoState copyWith({
    List<ToDo>? todoList,
    int? index,
    bool? isDisabled,
  }) {
    return TodoState(
      todoList: todoList ?? this.todoList,
      index: index ?? this.index,
      isDisabled: isDisabled ?? this.isDisabled,
    );
  }
}

class ToDo {
  final int index;
  final String todo;

  ToDo(
    this.todo,
    this.index,
  );
}
