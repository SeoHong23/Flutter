import 'package:flutter/material.dart';

class RecipeListItem extends StatelessWidget {
  // 멤버 변수
  final String imageName;
  final String title;
  // 하드 코딩

  const RecipeListItem(this.imageName, this.title, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // 이미지 비율을 지정할 수 있다.
          AspectRatio(
            aspectRatio: 2 / 1,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                'assets/images/${imageName}.jpeg',
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: 10),
          Text(title, style: TextStyle(fontSize: 20)),
          Text('Have you ever ......................')
          // 텍스트 1
          // 텍스트 2
        ],
      ),
    );
  }
}
