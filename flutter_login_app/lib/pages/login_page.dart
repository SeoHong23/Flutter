import 'package:flutter/material.dart';
import 'package:flutter_login_app/components/custom_form.dart';
import 'package:flutter_login_app/components/logo.dart';
import 'package:flutter_login_app/size.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        // 여백 확보를 위한 리스트 뷰 선언
        child: ListView(
          children: [
            SizedBox(height: xlargeGap),
            Logo('Login'),
            SizedBox(height: largeGap),
            CustomForm(),
          ],
        ),
      ),
    );
  }
}
