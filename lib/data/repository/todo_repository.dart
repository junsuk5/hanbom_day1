import '../todo.dart';

abstract interface class TodoRepository {
  Future<Todo> getTodo();
}