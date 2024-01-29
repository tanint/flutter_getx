import 'package:flutter/material.dart';
import 'package:flutter_getx/controllers/todos_controller.dart';
import 'package:get/instance_manager.dart';

class TodoInput extends StatelessWidget {
  const TodoInput({super.key});

  @override
  Widget build(BuildContext context) {
    final TodoController todoStore = Get.put(TodoController());

    void handleSubmit(String text) {
      todoStore.todos.add(TodoItem(id: 1, title: text, isDone: false));
    }

    return SizedBox(
      height: 50,
      child: Row(
        children: [
          Expanded(
            child: TextField(
              onSubmitted: handleSubmit,
              decoration: const InputDecoration(
                hintText: 'Create todo',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
