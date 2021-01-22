import 'package:flutter/material.dart';
import 'package:food_app/category_item.dart';

import 'dummy.dart';
class Categories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Container(
       decoration: BoxDecoration(
       image: DecorationImage(
       image: AssetImage("assets/images/food5.jpg"),
       fit: BoxFit.cover,
     ),
    ),
        child: GridView(
          padding: EdgeInsets.all(25),
        children: DUMMY_CATEGORIES.map((catData)=> CategoryItem(
          catData.id,
            catData.title,
            catData.color
        )).toList(),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 3/2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20
        ),
      ),
    );

  }
}
