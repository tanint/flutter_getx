import 'package:flutter/material.dart';
import 'package:flutter_getx/controllers/counter_controller.dart';
import 'package:flutter_getx/widgets/todo_list.dart';
import 'package:get/instance_manager.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    final CounterController counter = Get.put(CounterController());

    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: const Text("About"),
      ),
      body: SafeArea(
        child: Column(
          children: [
            const Expanded(child: TodoList()),
            FilledButton(
              onPressed: () => counter.increment(),
              child: const Text("Increase"),
            ),
          ],
        ),
      ),
    );
  }
}
