// 플러터 동작시 반드시 있어야 함!!
import 'package:flutter/material.dart';

// 코드의 시작점
void main() {
  runApp(MyApp());
} //end of main

class MyApp extends StatelessWidget {
  MyApp({super.key});

  // Flutter를 개발할 때 맨 밑바닥부터 개발하는 것은 힘들다.
  // 기본적인 개발을 할 수 있도록 매우 유용한 클래스를 제공한다.
  // MaterialApp
  @override
  Widget build(BuildContext context) {
    // 생성자
    // home: (라벨) <-- 선택적 명명 매개변수로 설계 되어 있다.
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // div 박스와 같은 녀석
      home: StorePage(),
    );
  }
} // end of MyApp

//
class StorePage extends StatelessWidget {
  StorePage({super.key});

  @override
  Widget build(BuildContext context) {
    // 시각적 레이아웃 구조를 잡아주는 위젯이다.
    return Scaffold(
      // 안전 영역 내에 자식 위젯들을 배치하도록 도와준다.
      body: SafeArea(
        child: Column(
          // 위젯은 자식, 또는 자식들을 속성을 가질 수 있다.

          children: [
            // 패딩위젯이나 마진에 값을 EdgeInsets 라는 클래스로 감싸서 넣는다.
            Padding(
              padding: EdgeInsets.all(25.0),
              // Row 위젯은 자식 위젯들을 수평 방향으로 정렬해 주는 위젯이다.
              child: Row(
                children: [
                  Text(
                    'Woman',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  // Spacer 위젯은 남은 공간을 차지하여 위젯 간격을 조절할 때 활용 가능
                  Spacer(),
                  Text(
                    'Kids',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  Text(
                    'Shoes',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  Text(
                    'Bag',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            // 자식 2
            // Expanded 위젯: 자식 위젯을 가용 공간에 맞게 확장시켜 배치하는 위젯이다.
            Expanded(
                child: Image.asset(
              'assets/bag.jpeg',
              fit: BoxFit.cover,
            )),
            // SizedBox 위젯은 고정된 크기의 빈 공간을 만들거나 자식 위젯의 크기를 제한할 때 사용한다.
            SizedBox(height: 20),
            // 자식 3
            Expanded(
                child: Image.asset(
              'assets/cloth.jpeg',
              fit: BoxFit.cover,
            )),
          ],
        ),
      ),
    );
  }
} // end of StorePage
