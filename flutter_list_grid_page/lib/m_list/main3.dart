import 'package:flutter/material.dart';
import 'package:flutter_list_grid_page/main.dart';

// ListView 와 ListTile 위젯을 살펴 보자.
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: ListView.separated(
            itemBuilder: (context, index) {
              return ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.amber,
                  child: Text('${index + 1}'),
                ),
                title: Text('Item1${index + 1}'),
                subtitle: Text('Itmesub${index + 1}'),
                trailing: IconButton(
                    onPressed: () {
                      print('퇴근 시간입니다! 집에 가세요');
                    },
                    icon: Icon(Icons.access_alarm)),
              );
            },
            separatorBuilder: (context, index) {
              return Divider(
                indent: 10.0,
                color: Colors.red,
                height: 50,
              );
            },
            itemCount: 10),
      ),
    );
  }
}
