import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: StorePage(),
    );
  }
}

class StorePage extends StatelessWidget {
  StorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text(
                  "Woman",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Spacer(),
                Text(
                  "Kids",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Spacer(),
                Text(
                  "Shoes",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Spacer(),
                Text(
                  "Bag",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Expanded(
              child: Image.asset(
            'assets/bag.jpeg',
            fit: BoxFit.cover,
          )),
          Expanded(
              child: Image.asset(
            'assets/cloth.jpeg',
            fit: BoxFit.cover,
          )),
        ],
      ),
    );
  }
}
