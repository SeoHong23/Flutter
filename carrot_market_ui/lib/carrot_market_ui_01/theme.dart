import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

TextTheme textTheme() {
  return TextTheme(
    // 가장 큰 제목 스타일
    displayLarge: GoogleFonts.openSans(fontSize: 18.0, color: Colors.black),
    // 중간 크기의 제목 스타일
    displayMedium: GoogleFonts.openSans(
        fontSize: 16.0, color: Colors.black, fontWeight: FontWeight.bold),
    // 본문 텍스트 스타일 (기사, 설명)
    bodyLarge: GoogleFonts.openSans(fontSize: 16.0, color: Colors.black),
    // 부제목, 작은 본문 텍스트 스타일
    bodyMedium: GoogleFonts.openSans(fontSize: 14.0, color: Colors.grey),
    // 중간 크기의 제목 스타일
    titleMedium: GoogleFonts.openSans(fontSize: 15.0, color: Colors.black),
  );
}

// AppBar 테마 설정
AppBarTheme appBarTheme() {
  return AppBarTheme(
    centerTitle: false,
    color: Colors.white,
    elevation: 0.0, // 그림자
    iconTheme: IconThemeData(color: Colors.black),
    titleTextStyle: GoogleFonts.openSans(
        fontSize: 16,
        fontWeight: FontWeight.bold,
        color: Colors.black // 앱바 제목 텍스트 색상
        ),
  );
}

// 바텀 네비게이션바 테마 설정
BottomNavigationBarThemeData bottomNavigationBarThemeData() {
  return BottomNavigationBarThemeData(
    selectedItemColor: Colors.orange, // 선택된 아이템 색상
    unselectedItemColor: Colors.black54, // 선택되지 않은 아이템 색상
    showUnselectedLabels: true, // 선택 안된 라벨 표시 여부 설정
  );
}

// 전체 ThemeData 설정
ThemeData mTheme() {
  return ThemeData(
    // 머터리얼 3 때부터 변경 됨..
    // 자동셋팅
    // colorScheme : Colorscheme.fromSeed(seedColor: Colors.orange)
    // 우리가 직접 지정함
    colorScheme: ColorScheme.fromSwatch(
      primarySwatch: Colors.orange,
    ),
    scaffoldBackgroundColor: Colors.white,
    textTheme: TextTheme(),
    appBarTheme: appBarTheme(),
    bottomNavigationBarTheme: bottomNavigationBarThemeData(),
  );
}
