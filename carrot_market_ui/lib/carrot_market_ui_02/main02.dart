import 'package:carrot_market_ui/carrot_market_ui_01/screens/main_screen.dart';
import 'package:carrot_market_ui/carrot_market_ui_01/theme.dart';
import 'package:flutter/material.dart';

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
