part of 'todo_bloc.dart';

@immutable
abstract class TodoEvent {}

class AddListEvent extends TodoEvent {}

class RemoveListEvent extends TodoEvent {
  final int index;

  RemoveListEvent({required this.index});
}

class TodoComplectedEvent extends TodoEvent {
  final int index;

  TodoComplectedEvent({required this.index});
}
