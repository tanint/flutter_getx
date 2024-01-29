import 'package:flutter/material.dart';
import 'package:flutter_getx/controllers/todos_controller.dart';
import 'package:get/instance_manager.dart';
import 'package:get/state_manager.dart';

class TodoList extends StatelessWidget {
  const TodoList({super.key});

  @override
  Widget build(BuildContext context) {
    TodoController todoStore = Get.put(TodoController());

    return Obx(
      () => ListView.builder(
        itemCount: todoStore.todos.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(todoStore.todos[index].title),
          );
        },
      ),
    );
  }
}
