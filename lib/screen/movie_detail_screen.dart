import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MovieDetailScreen extends StatelessWidget {
  static const routeName = '/movie-detail';

  final Function toggleFavorite;
  final Function isMyFavorite;
  MovieDetailScreen(this.toggleFavorite,this.isMyFavorite);

  @override
  Widget build(BuildContext context) {
    final routeArgs = ModalRoute.of(context).settings.arguments as Map<String,Object>;
    final id  = routeArgs['id'];
    final title  = routeArgs['title'];
    final des  = routeArgs['des'];
    final url  = routeArgs['image'];
    final actor  = routeArgs['actor'] as List<String>;

    return Scaffold(
      appBar: AppBar(
        title: Text("title"),
      ),
      body: Column(
        children: <Widget>[
          Container(
            child: Image.network(url),
            height: 300,
            margin: EdgeInsets.only(bottom: 20),
            width: double.infinity,
          ),
          Text(title,style:Theme.of(context).textTheme.title,),
          SizedBox(height: 20,),
          Text(des),
          SizedBox(height: 20,),
          Container(
            width: 300,
            height: 200,
            child: ListView.builder(
              itemBuilder: (ctx,index)=>Container(
                  padding: EdgeInsets.all(5),
                  margin: EdgeInsets.only(bottom: 5),
                  color: Theme.of(context).primaryColor,
                  child:  Text(actor[index],style: TextStyle(color: Colors.white),)
              ),
              itemCount: actor.length,
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(isMyFavorite(id) ? Icons.favorite:Icons.favorite_border),
        onPressed:() => toggleFavorite(id),
      ),
    );
  }
}


