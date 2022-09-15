part of 'todo_bloc.dart';

@immutable
abstract class TodoEvent {}

class AddListEvent extends TodoEvent {}

class RemoveListEvent extends TodoEvent {}
