import 'package:flutter_todos/models/todo.dart';

class TodoRepository {
  TodoRepository() {
    todos = [];
  }

  /// Hold list of Todo
  late List<Todo> todos;
}
