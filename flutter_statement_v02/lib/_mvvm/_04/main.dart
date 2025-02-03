import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../_04/views/todo_list_view.dart';

// 변경
void main() => runApp(ProviderScope(child: TodoApp()));

class TodoApp extends StatelessWidget {
  const TodoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: const Text('TodoList'),
          ),
          body: TodoListView(),
        ),
      ),
    );
  }
}
