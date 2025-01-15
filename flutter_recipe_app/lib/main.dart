import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_recipe_app/recipe_list_item.dart';
import 'package:flutter_recipe_app/recipe_menu.dart';
import 'recipe_title.dart';

void main() {
  // MyApp 위젯을 루트 위젯으로 만들어 주는 함수이다.
  // 사전 기반 지식 --- 위젯 트리를 떠올려 주세요.
  runApp(MyApp());
}

// 위젯을 만들 때 크게 두가지로 구분한다.
// StatelessWidget 위젯은 상태 변경이 없는 위젯을 화면에 그릴 때 선택한다.
// 상속 문법 사용
// 우리들만의 약속 - MyApp -> 머터리얼 앱 객체를 활용하자.
class MyApp extends StatelessWidget {
  // 생성자 - 선택적 명명 매개 변수(값을 넣어도 되고 않넣어도 되고 (옵션))
  MyApp({super.key});

  // 보통 루트 위젯을 시작할 때 MaterialApp을 많이 활용 한다.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'PatuaOne'),
      // 앱 실행 되었을 때 첫 페이지를 지정할 수 있다.
      home: RecipePage(),
    );
  }
} // end of class

// 우리들만의 규칙 2 - 페이지라고 이름 붙이는 클래스는 Scaffold(스캐아폴더)를 활용하자.
class RecipePage extends StatelessWidget {
  RecipePage({super.key});

  @override
  Widget build(BuildContext context) {
    // 시각적 레이아웃 구조를 잡아주는 위젯
    // app 영역
    // body 영역
    // bottom 영역
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _buildRecipeAppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          children: [
            // 타이틀
            RecipeTitle(),
            // 메뉴
            RecipeMenu(),
            // 레시피 아이템
            RecipeListItem('coffee', 'Made Coffee'),
            RecipeListItem('burger', 'Made Burger'),
            RecipeListItem('pizza', 'Made Pizza'),
          ],
        ),
      ),
    );
  } // end of build method

  // 메서드를 만들어 보자.
  // private(_이거)
  AppBar _buildRecipeAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0.0,
      flexibleSpace: Container(
        decoration: BoxDecoration(color: Colors.white, boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 1,
            blurRadius: 8,
            offset: Offset(0, 2),
          )
        ]),
      ),
      actions: [
        Icon(CupertinoIcons.search, color: Colors.black),
        SizedBox(width: 15),
        Icon(CupertinoIcons.heart, color: Colors.red),
        SizedBox(width: 15)
      ],
    );
  }
}
