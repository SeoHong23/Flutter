import 'package:flutter/material.dart';
import 'package:flutter_list_grid_page/m_list/main1.dart';

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
            body: GridView.builder(
              //
              scrollDirection: Axis.vertical,
              // gridDelegate = 그리드의 열 개수를 고정하는 속성입니다.
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10.0,
                  mainAxisSpacing: 10.0),
              itemCount: 12,
              itemBuilder: (context, index) {
                return Container(
                  color: Colors.amberAccent,
                  child: Center(
                      child: Column(
                    children: [
                      // Icon(
                      //   Icons.accessibility_rounded,
                      //   size: 50,
                      // ),
                      Image.asset(
                        'assets/good.jpeg',
                        width: 150.0,
                        height: 150.0,
                      ),

                      Text(
                        ('${index + 1} 잔할사람~'),
                        style: TextStyle(color: Colors.black54, fontSize: 30),
                      )
                    ],
                  )),
                );
              },
            ),
          ),
        ));
  }
}
