import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
          child: Scaffold(
        body: HomePage(),
      )),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // 통신을 담당하는 클라이언트 측 객체를 가져오자.
  Dio _dio = Dio();

  @override
  void initState() {
    super.initState();
    // 객체 실행 시 한번 호출 메서드
    _fetchTodos();
  }

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }

  // 통신을 담당하는 메서드를 만들어보자.
  _fetchTodos() async {
    // https://jsonplaceholder.typicode.com/todos/1
    // 통신을 담당하는 코드는 기본적으로 예외처리를 꼭 넣어야한다.
    try {
      Response response =
          await _dio.get('https://jsonplaceholder.typicode.com/todos/1');
      print('HTTP status code : ${response.statusCode}');
      print('서버 측에서 전달한 데이터 : ${response.data}');
      print(
          'Json 통신 후 dart 에서는 어떤 타입으로 변경 되었을까? : ${response.data.runtimeType}');

      // Map 타입의 값을 출력하는 방법
      print('---------------------------');
      print('data-> title 값 확인 : ${response.data['title']}');
      print('data-> id 값 확인 : ${response.data['id']}');
      print('data-> userId 값 확인 : ${response.data['userId']}');
      print('data-> completed 값 확인 : ${response.data['completed']}');
    } catch (e) {
      print('실행 시점(런타임) 예외가 발생했어요');
      print(e.toString());
    }
  }
}
