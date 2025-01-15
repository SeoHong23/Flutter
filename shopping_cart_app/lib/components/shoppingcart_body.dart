import 'package:flutter/material.dart';

class ShoppingcartBody extends StatelessWidget {
  const ShoppingcartBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30.0),
          topRight: Radius.circular(30.0),
        ),
      ),
      // 임시 ListView 사용
      child: ListView(
        children: [
          _buildBodyNameAndPrice(),
          _buildBodyRatingAndReviewCount(),
          _buildBodyColorOptions(),
          _buildBodyButton()
        ],
      ),
    );
  } // end of build

  // 1. 이름과 가격
  Widget _buildBodyNameAndPrice() {
    return Placeholder();
  }

  // 2. 별점 리뷰 카운트
  Widget _buildBodyRatingAndReviewCount() {
    return Placeholder();
  }

  // 3. 색상 옵션 선택
  Widget _buildBodyColorOptions() {
    return Placeholder();
  }

  // 4. 색생 옵션 위젯을 만드는 함수
  Widget _buildColorOption() {
    return Padding(
      padding: EdgeInsets.only(right: 10),
      child: Stack(
        children: [
          // Positioned 위젯 활용
        ],
      ),
    );
  }

  // 5. 버튼 만들기
  Widget _buildBodyButton() {
    return Placeholder();
  }
} // end of body
