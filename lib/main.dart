import 'package:flutter/material.dart';
import 'package:fluttermovie/dummy_data.dart';
import 'package:fluttermovie/model/movie.dart';
import 'package:fluttermovie/screen/bottom_nav_screen.dart';
import 'package:fluttermovie/screen/category_screen.dart';
import 'package:fluttermovie/screen/filter_screen.dart';
import 'package:fluttermovie/screen/tabs_screen.dart';
import './screen/movie_detail_screen.dart';
import './screen/movie_category_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  List<Movie> _favoriteList= [];

  void _toggleFavorite(String movieId){
    final existingIndex = _favoriteList.indexWhere((movie)=>movie.id == movieId);
    if(existingIndex>=0){
     setState(() {
       _favoriteList.removeAt(existingIndex);
     });
    }else{
      setState(() {
        _favoriteList.add(DUMMY_MOVIE.firstWhere((element) => element.id == movieId));
      });
    }
  }

  bool isMyFavorite(String movieId){
    print(_favoriteList.any((element) => element.id==movieId));
      return _favoriteList.any((element) => element.id==movieId);
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Movies',
      debugShowCheckedModeBanner: false,
      routes:{
        "/":(ctx)=>BottomNavScreen(_favoriteList),
        MovieCategoryScreen.routeName:(ctx)=>MovieCategoryScreen(),
        MovieDetailScreen.routeName:(ctx)=>MovieDetailScreen(_toggleFavorite,isMyFavorite),
        FilterScreen.routeName:(ctx)=>FilterScreen(_favoriteList),
      },
      onUnknownRoute:(settings){
        return MaterialPageRoute(builder: (ctx)=>BottomNavScreen(_favoriteList));
      },
      theme: ThemeData(
        primarySwatch:Colors.amber,
        primaryColor: Colors.amber,
        accentColor:Color.fromRGBO(255, 254, 229, 1),
        canvasColor: Color.fromRGBO(255, 254, 229, 1),
        fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
            body1: TextStyle(
              color: Color.fromRGBO(20, 51, 51, 1)
            ),
            body2: TextStyle(
                color: Color.fromRGBO(20, 51, 51, 1)
            ),
            title: TextStyle(
              color: Color.fromRGBO(20, 51, 51, 1),
              fontFamily: 'RobotoCondensed',
              fontSize: 21,
              fontWeight: FontWeight.bold
          ),
        )
      ),
    );
  }
}
