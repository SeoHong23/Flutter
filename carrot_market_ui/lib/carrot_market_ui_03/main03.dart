import 'package:flutter/material.dart';
import 'theme.dart';
import 'screens/main_screen.dart';

void main() => runApp(CarrotMarketUI());

class CarrotMarketUI extends StatelessWidget {
  const CarrotMarketUI({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'carrot_ui',
      debugShowCheckedModeBanner: false, // 디버그 표시
      theme: mTheme(),
      home: MainScreen(),
    );
  }
}
