import 'package:flutter/material.dart';
import 'package:flutter_login_app/components/logo.dart';
import 'package:flutter_login_app/size.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            SizedBox(height: xlargeGap),
            Logo('Care Soft'),
            SizedBox(height: xlargeGap),
            TextButton(
              onPressed: () {
                // 1. 화면 스택 제거
                Navigator.pop(context);
              },
              child: Text('Get Started'),
            )
          ],
        ),
      ),
    );
  }
}
