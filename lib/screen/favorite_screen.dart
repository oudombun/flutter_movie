import 'package:flutter/material.dart';
import 'package:fluttermovie/model/movie.dart';
import 'package:fluttermovie/widget/movie_item.dart';

class FavoriteScreen extends StatefulWidget {
  @override
  _FavoriteScreenState createState() => _FavoriteScreenState();
  final List<Movie> favList;
  FavoriteScreen(this.favList);
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  @override
  Widget build(BuildContext context) {
    return widget.favList.length==0?
    Center(child: Text("There is no favorite"),):
    ListView.builder(
      itemBuilder: (ctx,index){
        return MovieItem(
          title: widget.favList[index].title,
          des : widget.favList[index].des,
          image:  widget.favList[index].image,
          duration : widget.favList[index].runtime,
          type : widget.favList[index].movieType,
          actor: widget.favList[index].actor,
        );
      },
      itemCount: widget.favList.length,
    );
  }
}
