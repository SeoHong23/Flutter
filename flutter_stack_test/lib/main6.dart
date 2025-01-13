import 'package:flutter/material.dart';
// 반투명 ..

// void main() {
//   runApp(MyApp());
// }
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Stack(
            children: [
              // 배경을 꾸며 보자
              Container(
                width: 300,
                height: 300,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/gg.png'), fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(15)),
              ),
              // 반투명 레이어
              Container(
                width: 300,
                height: 300,
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              Text(
                'chicken',
                style: TextStyle(fontSize: 30, color: Colors.amberAccent),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
