import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_statement_v02/riverpod_v01/_04/book.dart';

// 1. ProviderScope 사용
void main() => runApp(ProviderScope(child: MyApp()));

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const MyBookPage(),
    );
  }
}

// 2. ConsumerWidget 사용

class MyBookPage extends ConsumerWidget {
  const MyBookPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // ref.watch(provider),  한 번 데이터 가져올 때, 창고 자체에 접근 가능하다.
    String getBook = ref.watch(myBookStoreNotiProvider);
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('${getBook}'),
            ElevatedButton(
              onPressed: () {
                // 창고안에 머신을 작동시키자.
                MyBookStore notiStore =
                    ref.read(myBookStoreNotiProvider.notifier);
                notiStore.changeData('데미안');
              },
              child: Text('책 변경하기'),
            ),
          ],
        ),
      ),
    );
  }
}

/**
 * 정리
 * Provider (01 예제)  - 1회 알바생
 *  - 데이터를 단순히 한번 제공하는 역할, 상태가 변하지 않는 데이터를 관리 할 때 사용
 *    즉, 주로 정적인 데이터를 제공 할 때 사용한다.(단순 문자열, 정적 객체 등)
 *
 *  StateNotifierProvider(02 예제) - 창고 관리자
 *   - riverpod 2.xxx
 *   - 상태를 관리(state)하고 변경 할 수 있는 창고 관리자 역할이다.
 *     상태(state)가 변경이 되면 이를 구독(watch)중인 모든 위젯에게 알려준다.
 *   ref.read() 창고(FruitStore) 자체에 접근 할 수 있고,
 *   ref.watch() 는 계속 구독하여 상태 변경을 감지 할 수 있다.
 *
 * NotifierProvier(04 예제)
 *  - riverpod 2.xxx
 *  - 상태를 관리하고 변경할 수있는 창고 관리자 역할
 *  - StateNotifierProvider 개선된 버전이다.
 *  - ref.read() 창고(FruitStore) 자체에 접근 할 수 있고,
 *    ref.watch() 는 계속 구독하여 상태 변경을 감지 할 수 있다.
 */
