import 'package:flutter/material.dart';
import 'package:flutter_getx/controllers/counter_controller.dart';
import 'package:flutter_getx/pages/about_page.dart';
import 'package:flutter_getx/widgets/todo_input.dart';
import 'package:flutter_getx/widgets/todo_list.dart';
import 'package:get/instance_manager.dart';
import 'package:get/route_manager.dart';
import 'package:get/state_manager.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => const Home()),
        GetPage(name: '/about', page: () => const AboutPage())
      ],
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final CounterController counter = Get.put(CounterController());

    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: const Text("Hello"),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Column(
                children: [
                  Obx(
                    () => Text("Hello world ${counter.count}"),
                  ),
                  Row(
                    children: [
                      FilledButton(
                        onPressed: () => counter.increment(),
                        child: const Text("Increase"),
                      ),
                      OutlinedButton(
                        onPressed: () => counter.increment(),
                        child: const Text("Increase"),
                      ),
                      FilledButton.tonal(
                        onPressed: () => Get.toNamed("/about"),
                        child: const Text("Go to about"),
                      ),
                    ],
                  ),
                  const Expanded(child: TodoList()),
                ],
              ),
            ),
            const TodoInput()
          ],
        ),
      ),
    );
  }
}
