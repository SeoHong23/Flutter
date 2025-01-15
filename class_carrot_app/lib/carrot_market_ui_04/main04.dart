import 'package:flutter/material.dart';
import 'screens/main_screen.dart';
import 'theme.dart';

void main() => runApp(CarrotMarketUI());

class CarrotMarketUI extends StatelessWidget {
  const CarrotMarketUI({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //title 어플 아이콘 밑에 이름
      title: 'carrot_ui',
      debugShowCheckedModeBanner: false,
      theme: mTheme(),
      home: MainScreen(),
    );
  }
}
