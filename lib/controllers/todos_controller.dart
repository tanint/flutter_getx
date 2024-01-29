import 'package:get/state_manager.dart';

class TodoItem {
  int id;
  String title;
  bool isDone;

  TodoItem({
    required this.id,
    required this.title,
    required this.isDone,
  });
}

class TodoController extends GetxController {
  final List<TodoItem> todos = <TodoItem>[].obs;
}
