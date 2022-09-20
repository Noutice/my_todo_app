part of 'todo_bloc.dart';

class TodoState {
  final List<Todo> todoList;
  final bool isDisabled;

  TodoState({
    this.isDisabled = false,
    this.todoList = const [],
  });

  TodoState changeWith({
    List<Todo>? todoList,
    bool? isDisabled,
  }) {
    return TodoState(
      todoList: todoList ?? this.todoList,
      isDisabled: isDisabled ?? this.isDisabled,
    );
  }
}

class Todo {
  Color complectedColor;
  final String todo;
  bool isComplected;

  Todo(this.todo, this.complectedColor, [this.isComplected = false]);
}
