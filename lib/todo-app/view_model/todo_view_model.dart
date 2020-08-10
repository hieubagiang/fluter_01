
import 'package:flutter_01/Buoi4_Provider/ui/view_model/base_view_model.dart';
import 'package:flutter_01/todo-app/model/todo.dart';

class TodoViewModel extends BaseViewModel {
  List<Todo> _todoList = [];

  List<Todo> get todoList => _todoList;

  set todoList(List<Todo> value) {
    _todoList = value;
    notifyListeners();
  }

  void addTodo(Todo todo) {
    todoList.add(todo);
  }
}
