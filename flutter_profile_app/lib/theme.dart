import 'package:flutter/material.dart';
// 보통 협업 --> 디자이너
// --- 색상, 텍스트, 디자인 등등
// 전역 함수로 만들어 보자.

const MaterialColor primaryWhite = MaterialColor(0xFF4CAF50, <int, Color>{
  50: Color(0xFFE8F5E9), // Light Green 50
  100: Color(0xFFC8E6C9), // Light Green 100
  200: Color(0xFFA5D6A7), // Light Green 200
  300: Color(0xFF81C784), // Light Green 300
  400: Color(0xFF66BB6A), // Light Green 400
  500: Color(0xFF4CAF50), // Primary Green (Default)
  600: Color(0xFF43A047), // Green 600
  700: Color(0xFF388E3C), // Green 700
  800: Color(0xFF2E7D32), // Green 800
  900: Color(0xFF1B5E20), // Dark Green 900
});

// 전역 함수
ThemeData theme() {
  // App 전반적인 테마(색상, 글꼴, 위젯 스타일 등)를 정의하는 클래스
  // 입니다. --> 일관된 디자인을 유지하기 위해 사용한다.
  return ThemeData(
      // App 의 기본 색상 팔레트를 설정하는 속성입니다.
      primarySwatch: primaryWhite,
      appBarTheme: const AppBarTheme(
        iconTheme: IconThemeData(color: Colors.blue),
      ));
}
