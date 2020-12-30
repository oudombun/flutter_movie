import 'package:flutter/material.dart';
import './category_screen.dart';
import './favorite_screen.dart';

class TabsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 2,child: Scaffold(
      appBar: AppBar(
        title: Text("Movies"),
        bottom: TabBar(tabs: <Widget>[
          Tab(icon: Icon(Icons.category),text: "Category",),
          Tab(icon: Icon(Icons.favorite),text: "Favorite",),
        ],),
      ),
      body: TabBarView(
        children: <Widget>[
          CategoryScreen(),
//          FavoriteScreen()
        ],
      ),
    ),);
  }
}
