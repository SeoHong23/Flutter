import 'package:flutter/material.dart';

// 상태가 잇는 위젯을 만들어 보자.
// 1.StatefulWidget 위젯을 상속받았다.
// 두 개의 클래스가 한 묶음이다.
class ProfileTab extends StatefulWidget {
  const ProfileTab({super.key});

  @override
  State<ProfileTab> createState() => _ProfileTabState();
}

class _ProfileTabState extends State<ProfileTab>
    with SingleTickerProviderStateMixin {
  // 멤버변수
  // TabController는 TabBar와 TabBarView 를 동기화 하는 컨트롤러 입니다.
  TabController? _tabController;

  // 단 한번 호출이 되는 메서드이다.
  @override
  void initState() {
    super.initState();
    print('프로필 탭 내부 클래스 init 호출했다.');
    // length 는 탭 개수를 의미한다.
    // vsync 는 자연스러운 애니매이션 전환을 위해서 TickerProvider 를 활용한다.

    _tabController = TabController(length: 2, vsync: this);
  }

  // build 메서드는 기본적으로 그림을 그릴 때 호출이 된다.
  @override
  Widget build(BuildContext context) {
    // 지역 변수
    print('123456789');
    return Column(
      children: [
        _buildTabBar(),
        Expanded(
          child: _buildTabBarView(),
        ),
      ],
    );
  }

  TabBarView _buildTabBarView() {
    return TabBarView(
      controller: _tabController,
      children: [
        GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisSpacing: 10, // 열(컬럼) 사이의 간격을 10으로 설정
            mainAxisSpacing: 10, // 행(로우) 사이의 간격 설정
            crossAxisCount: 3,
          ),
          itemBuilder: (context, index) {
            // 이미지를 불러와야 한다.
            return Image.network('https://picsum.photos/id/${index}/200/200');
          },
          itemCount: 40,
        ),
        ListView(children: [])
      ],
    );
  }

  TabBar _buildTabBar() {
    return TabBar(
      // 중간 매개체로 연결
      controller: _tabController,
      tabs: [
        Tab(
          icon: Icon(Icons.dialpad),
        ),
        Tab(
          icon: Icon(Icons.coffee),
        ),
      ],
    );
  }
} // end _ProfileTabState
