import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
          child: Scaffold(
        body: Center(
          child: Stack(
            children: [
              Container(
                width: 300,
                height: 300,
                color: Colors.blue,
              ),
              Positioned(
                left: 50,
                bottom: 50,
                child: Container(
                  width: 200,
                  height: 200,
                  color: Colors.red,
                ),
              ),
              Container(
                width: 150,
                height: 150,
                color: Colors.orange,
              ),
            ],
          ),
        ),
      )),
    );
  }
}
