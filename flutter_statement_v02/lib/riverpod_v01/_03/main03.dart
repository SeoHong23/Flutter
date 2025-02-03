import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_statement_v02/main.dart';
import 'package:flutter_statement_v02/riverpod_v01/_03/book.dart';

void main() => runApp(ProviderScope(child: MyApp()));

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BookPage(),
    );
  }
}

// 직접 ConsumerWidet 을 사용해서 코드를 작성하시오
class BookPage extends ConsumerWidget {
  const BookPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    String getBook = ref.watch(MyBookStoreProvider);
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('book 확인 : ${getBook}'),
            ElevatedButton(
              onPressed: () {
                MyBookStore myBookStore =
                    ref.read(MyBookStoreProvider.notifier);
                myBookStore.changData("이순신");
              },
              child: Text('다른책으로 변경'),
            ),
          ],
        ),
      ),
    );
  }
}
