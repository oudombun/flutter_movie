import 'package:flutter/material.dart';
import 'package:fluttermovie/model/movie.dart';
import '../widget/custom_drawer.dart';
import './category_screen.dart';
import './favorite_screen.dart';

class BottomNavScreen extends StatefulWidget {
  @override
  _BottomNavScreenState createState() => _BottomNavScreenState();

    final List<Movie> favoriteList;
    BottomNavScreen(this.favoriteList);
}

class _BottomNavScreenState extends State<BottomNavScreen> {


  int selectIndex = 0;

  List<Widget> _page;

  @override
  void initState() {
    setState(() {
      _page= [
        CategoryScreen(),
        FavoriteScreen(widget.favoriteList)
      ];
    });
    super.initState();
  }

  void _selectScreen(int index){
    setState(() {
      selectIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Movie"),
      ),
      drawer: CustomDrawer(),
      body: _page[selectIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Theme.of(context).primaryColor,
        onTap: _selectScreen,
        currentIndex: selectIndex,
        selectedItemColor: Theme.of(context).accentColor,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            title: Text("Category")
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              title: Text("Favorite")
          ),
        ],
      ),
    );
  }
}
