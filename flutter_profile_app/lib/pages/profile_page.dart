import 'package:flutter/material.dart';
import 'package:flutter_profile_app/components/profile_buttons.dart';
import 'package:flutter_profile_app/components/profile_count_info.dart';
import 'package:flutter_profile_app/components/profile_tab.dart';

import '../components/profile_header.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('profile'),
        ),
        endDrawer: Container(
          width: 200,
          // double.infinity <-- 가능한 최대로 확장 하라
          height: double.infinity,
          color: Colors.blue,
        ),
        body: const Column(
          children: [
            // 공백 20
            SizedBox(height: 20), // 여러번 사용시 const
            // 프로필 헤더,
            ProfileHeader(),
            // 공백 20,
            SizedBox(height: 20),
            // 프로필 카운트 정보,
            ProfileCountInfo(),
            // 공백 20,
            SizedBox(height: 20),
            // 프로필 버튼 2개,
            ProfileButtons(),
            // 탭바영역
            Expanded(child: ProfileTab()),
          ],
        ),
      ),
    );
  }
}
