import 'package:clean_arch_guide/data/repository/todo_repository.dart';

import '../todo.dart';

class FakeTodoRepositoryImpl implements TodoRepository {
  List<Todo> _todos = [];

  @override
  Future<Todo> getTodo() async {
    final json = {
      "userId": 1,
      "id": 1,
      "title": "delectus aut autem",
      "completed": false
    };

    return Todo.fromMap(json);
  }
}
