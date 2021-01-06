import 'package:flutter/material.dart';
import 'package:fluttermovie/model/movie.dart';
import 'package:fluttermovie/widget/movie_item.dart';
import '../widget/custom_drawer.dart';

class FilterScreen extends StatelessWidget {
  static const routeName="filter";

  List<Movie> _fav = [];
  FilterScreen(List<Movie> fav){
    _fav = fav;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Filter"),
      ),
      drawer: CustomDrawer(),
      body: ListView.builder(
        itemBuilder: (ctx,index){
          return MovieItem(
            id: _fav[index].id,
            title: _fav[index].title,
            des : _fav[index].des,
            image:  _fav[index].image,
            duration : _fav[index].runtime,
            type : _fav[index].movieType,
            actor: _fav[index].actor,
          );
        },
        itemCount: _fav.length,
      )
    );
  }
}
