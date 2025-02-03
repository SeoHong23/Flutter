import 'package:class_carrot_app/carrot_market_ui_06/models/icon_menu.dart';
import 'package:flutter/material.dart';

class CardIconMenu extends StatelessWidget {
  final List<IconMenu> iconMenuList;

  const CardIconMenu({required this.iconMenuList, super.key});
  // iconMenuList[0].Title
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: List.generate(
          iconMenuList.length,
          (index) => _buildMySetting(
            iconMenuList[index].iconData,
            iconMenuList[index].title,
          ),
        ),
      ),
    );
  }
}

Widget _buildMySetting(IconData mIcon, String title) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Row(
      children: [
        Icon(mIcon),
        SizedBox(width: 20),
        Text(title,
            style: TextStyle(
                fontSize: 15.0,
                fontWeight: FontWeight.bold,
                color: Colors.black54)),
      ],
    ),
  );
}
