import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/todo_item.dart';
import '../view_models/todo_list_view_model.dart';

class TodoListView extends ConsumerWidget {
  // 상태관리 --> 동기화 (공유 데이터를 여러 )
  TextEditingController _controller = TextEditingController();
  TodoListView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // todoItem 객체는 상태가 있다. -- 즉, 변수가 변화 할 가능성이 있다.
    // todos ==> List<TodoItem> <-- 계속 감시 중
    final todos = ref.watch(TodoListViewModelProvider);
    // 창고에 직접 접근
    // todoNotifier --> 뷰 모델
    final todoNotifier = ref.read(TodoListViewModelProvider.notifier);

    return Flexible(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              controller: _controller,
              decoration: InputDecoration(
                hintText: 'Enter todo item...',
                suffixIcon: IconButton(
                  onPressed: () {
                    todoNotifier.addItem(_controller.text);
                    _controller.clear();
                  },
                  icon: Icon(Icons.add),
                ),
              ),
            ),
          ),
          SizedBox(height: 16.0),
          Expanded(
            child: ListView.builder(
              itemCount: todos.length,
              itemBuilder: (context, index) {
                final TodoItem item = todos[index];
                return ListTile(
                  title: Text(item.title),
                  trailing: Checkbox(
                    value: item.isDone,
                    onChanged: (value) {
                      todoNotifier.toggleItem(item);
                    },
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
