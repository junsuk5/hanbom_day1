import 'package:clean_arch_guide/data/todo.dart';

import 'data/repository/todo_repository.dart';

class MainViewModel {
  final TodoRepository _todoRepository;

  MainViewModel(this._todoRepository);

  Todo? _todo;

  Todo get todo => _todo!;

  Future<void> getTodo() async {
    _todo = await _todoRepository.getTodo(); //
  }

}

typedef Callback = bool Function(int, String)?;

class Button {
  bool Function(int, String)? onPressed;

  Button({
    this.onPressed,
  });

  void click() {
    onPressed?.call(10, '홍길동');
  }

}

void main() {
  Button(onPressed: (i, s) {
    return true;
  });
}



// Mock
