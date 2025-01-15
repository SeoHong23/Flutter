import 'package:class_carrot_app/carrot_market_ui_05/screens/components/appbar_preferred_size.dart';
import 'package:class_carrot_app/carrot_market_ui_05/screens/home/components/product_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../models/product.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        forceMaterialTransparency: true,
        title: Row(
          children: [
            Text('좌동'),
            SizedBox(width: 4.0),
            Icon(
              Icons.keyboard_arrow_down,
              size: 25.0,
            )
          ],
        ),
        bottom: appBarBottomLine(),
        actions: [
          IconButton(icon: Icon(CupertinoIcons.search), onPressed: () {}),
          IconButton(icon: Icon(CupertinoIcons.list_dash), onPressed: () {}),
          IconButton(icon: Icon(CupertinoIcons.bell), onPressed: () {}),
        ],
      ),
      // body: ListView.separated(itemBuilder: itemBuilder, separated

      body: ListView.separated(
        itemBuilder: (context, index) =>
            ProductItem(product: productList[index]),
        separatorBuilder: (context, index) => Divider(
          height: 0,
          indent: 16.0,
          endIndent: 16.0,
          color: Colors.grey,
        ),
        itemCount: productList.length,
      ),
    );
  }
}
