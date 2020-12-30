import 'package:flutter/material.dart';
import '../dummy_data.dart';
import '../widget/movie_item.dart';

class MovieCategoryScreen extends StatelessWidget {

  static const routeName ='/movie-category';

  @override
  Widget build(BuildContext context) {

    final routeArgs= ModalRoute.of(context).settings.arguments as Map<String,String>;

    final cateId = routeArgs["id"];
    final cateName = routeArgs["name"];
    final moviesCategory=  DUMMY_MOVIE.where((movie){
        return movie.categories.contains(cateId);}).toList();


    return Scaffold(
      appBar: AppBar(
        title: Text(cateName)
      ),
      body: ListView.builder(
          itemBuilder: (ctx,index){
            return MovieItem(
              id: moviesCategory[index].id,
              title: moviesCategory[index].title,
              des : moviesCategory[index].des,
              image:  moviesCategory[index].image,
              duration : moviesCategory[index].runtime,
              type : moviesCategory[index].movieType,
              actor: moviesCategory[index].actor,
            );
          },
          itemCount: moviesCategory.length,
      )
    );
  }
}
