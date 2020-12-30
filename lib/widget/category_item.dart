import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttermovie/screen/movie_category_screen.dart';
import '../screen/movie_detail_screen.dart';

class CategoryItem extends StatelessWidget {

  String name;
  Color color;
  String id;

  CategoryItem({this.id,this.name,this.color});

  void next(BuildContext ctx){
    Navigator.of(ctx).pushNamed(
        MovieCategoryScreen.routeName,
        arguments: {
          'id':id,
          'name':name
        }
    );
  }


  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ()=>next(context),
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(8),
      child: Container(
          padding: EdgeInsets.symmetric(horizontal: 15,vertical: 15),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [
                    color.withOpacity(0.7),
                    color
                  ]
              )
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                name,
                style: Theme.of(context).textTheme.title,
              )
            ],
          )
      ),
    );
  }
}
