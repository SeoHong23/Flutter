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
        body: ListView.builder(
          itemCount: 20,
          itemBuilder: (context, index) {
            return ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.blue,
                child: Text('${index + 1}'),
              ),
              title: Text('Item${index + 1}'),
              subtitle: Text('Item sub${index + 1}'),
              trailing: IconButton(onPressed: () {}, icon: Icon(Icons.add)),
            );
          },
        ),
      ),
    );
  }
}
