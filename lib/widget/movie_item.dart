import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttermovie/model/movie.dart';
import '../screen/movie_detail_screen.dart';

class MovieItem extends StatelessWidget {

  String id;
  String title;
  String des;
  String image;
  int duration;
  MovieType type;
  List<String> actor;

  MovieItem({this.id,this.title,this.des,this.image,this.duration,this.type,this.actor});

  void selectMovie(BuildContext ctx){
    //method 1
//      Navigator.of(ctx).push(
//          MaterialPageRoute(
//            builder: (_){
//              return MovieDetailScreen(title: title,des: des,url: image);
//            },
//           )
//      );

        Navigator.of(ctx).pushNamed(
            MovieDetailScreen.routeName,
            arguments: {
              'id':id,
              'title':title,
              'des':des,
              'image':image,
              'actor':actor
            }
        ).then((value){
          //this trigger after that page is poped
//          print(value);
        });
  }

  String getTypeMovie(MovieType type){
    switch(type){
      case MovieType.TV_SERIES:return "Tv Serie";break;
      case MovieType.MOVIES:return "Movie";break;
      default: return "Unknown";break;
    }
  }


  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ()=>selectMovie(context),
      borderRadius: BorderRadius.circular(8),
      child: Card(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15)
          ),
        elevation: 4,
        margin: EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            Stack(children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(15),topRight: Radius.circular(15)),
                child: Image.network(image,height: 250,width: double.infinity,fit: BoxFit.cover,),
              ),
              Positioned(
                bottom: 20,
                right: 10,
                child: Container(
                  width: 300,
                  padding: EdgeInsets.all(10),
                  color: Colors.black54,
                  child: Text(title,style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),),
                ),
              )
            ],),
            Container(
              width: double.infinity,
              height: 50,
              padding: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                Row(
                  children: <Widget>[
                    Icon(Icons.schedule),
                    Text('$duration mn')
                ],),
                Row(
                  children: <Widget>[
                    Icon(Icons.category),
                    Text(getTypeMovie(type))
                  ],)

              ],),
            )
          ],
        ),
      )
    );
  }
}


//        Column(
//          mainAxisAlignment: MainAxisAlignment.end,
//          crossAxisAlignment: CrossAxisAlignment.stretch,
//          children: <Widget>[
//            Container(
//              padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
//              decoration: BoxDecoration(
//                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(8),bottomRight:Radius.circular(8)),
//                color: Color.fromRGBO(197, 197, 197, 0.85),
//              ),
//              child: Column(
//                crossAxisAlignment: CrossAxisAlignment.start,
//                children: <Widget>[
//                  Text(
//                    title,
//                    overflow: TextOverflow.ellipsis,
//                    style: Theme.of(context).textTheme.title,
//                  )
//                ],
//              )
//            ),
//
//          ],
//        ),
//
//        decoration: BoxDecoration(
//          borderRadius: BorderRadius.circular(8),
//          image: DecorationImage(
//            image: NetworkImage(image),
//            fit: BoxFit.cover
//          ),
//        ),
