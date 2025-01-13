import 'package:flutter/material.dart';
import 'package:flutter_stack_test/main.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: Stack(
            children: [
              Positioned(
                top: 250,
                left: 50,
                child: Container(
                  width: 300,
                  height: 300,
                  color: Colors.blue,
                ),
              ),
              Positioned(
                top: 250,
                left: 50,
                child: Container(
                  width: 200,
                  height: 200,
                  color: Colors.red,
                ),
              ),
              Positioned(
                top: 250,
                left: 50,
                child: Container(
                  width: 100,
                  height: 100,
                  color: Colors.orange,
                ),
              ),
              Positioned(
                top: 250,
                left: 50,
                child: Container(
                  width: 50,
                  height: 50,
                  color: Colors.green,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
