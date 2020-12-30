import 'package:flutter/material.dart';
import 'package:fluttermovie/dummy_data.dart';
import 'package:fluttermovie/widget/category_item.dart';

class CategoryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView(
          padding: EdgeInsets.all(20),
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
              childAspectRatio: 3/2,
              crossAxisSpacing: 15,
              mainAxisSpacing: 15
          ),
          children: DUMMY_CATE.map((e) {
            return CategoryItem(
              id: e.id,
              name: e.name,
              color: e.color
            );
          }).toList(),
    );
  }
}
