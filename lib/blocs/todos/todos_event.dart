import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:flutter_todos/models/todo.dart';

@immutable
abstract class TodosEvent extends Equatable {
  TodosEvent([List props = const []]) : super(props);
}

class LoadTodos extends TodosEvent {
  @override
  String toString() => "LoadTodos";
}

class AddTodo extends TodosEvent {
  final Todo todo;

  AddTodo(this.todo) : super([todo]);

  @override
  String toString() => "AddTodo {todo: $todo}";
}

class Updatetodo extends TodosEvent {
  final Todo updateTodo;

  Updatetodo(this.updateTodo) : super([updateTodo]);

  @override
  String toString() => "UpdateTodo {updateTodo: $updateTodo}";
}

class DeleteTodo extends TodosEvent {
  final Todo todo;

  DeleteTodo(this.todo) : super([todo]);

  @override
  String toString() => "DeleteTodo {todo: $todo}";
}

class ClearCompleted extends TodosEvent {
  @override
  String toString() => "ClearCompleted";
}

class ToggleAll extends TodosEvent {
  @override
  String toString() => "ToggleAll";
}
