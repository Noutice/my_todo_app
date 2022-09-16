part of 'todo_bloc.dart';

class TodoState {
  final List<ToDo> todoList;
  final int index;
  final bool isDisabled;
  final bool isComplected;
  final Color complectedColor;

  TodoState({
    this.complectedColor = const Color(0xFF968E78),
    this.isComplected = false,
    this.isDisabled = false,
    this.index = 0,
    this.todoList = const [],
  });

  TodoState copyWith({
    List<ToDo>? todoList,
    int? index,
    bool? isDisabled,
    bool? isComplected,
    Color? complectedColor,
  }) {
    return TodoState(
      todoList: todoList ?? this.todoList,
      index: index ?? this.index,
      isDisabled: isDisabled ?? this.isDisabled,
      isComplected: isComplected ?? this.isComplected,
      complectedColor: complectedColor ?? this.complectedColor,
    );
  }
}

class ToDo {
  late final Color complectedColor;
  final int index;
  final String todo;

  ToDo(
    this.todo,
    this.index,
    {this.complectedColor = const Color(0xFF968E78)}
  );
}
