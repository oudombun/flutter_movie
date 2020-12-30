import 'package:flutter/material.dart';
import 'package:fluttermovie/screen/filter_screen.dart';

class CustomDrawer extends StatelessWidget {

  Widget buildListTile(String text,IconData icon,Function tabhandle){
    return ListTile(
      leading: Icon(icon,size: 26,),
      title: Text(text,style: TextStyle(
        fontSize: 24,
        fontFamily: 'RobotoCondensed',
        fontWeight: FontWeight.bold
      ),),
      onTap: tabhandle,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Container(
            width: double.infinity,
            height: 120,
            padding: EdgeInsets.all(20),
            color: Theme.of(context).primaryColor,
            alignment: Alignment.centerLeft,
            child: Text("Not NetFlix",style: TextStyle(
                fontSize:30,
                fontFamily: 'RobotoCondensed',
                fontWeight: FontWeight.w900,
              color: Theme.of(context).accentColor
            ),),
          ),
          SizedBox(height: 20,),
          buildListTile(
              "Movies",
              Icons.movie,
              () {
                Navigator.of(context).pushReplacementNamed("/");
              }
          ),
          buildListTile("Filter",Icons.settings,() {
            Navigator.of(context).pushReplacementNamed(FilterScreen.routeName);
          })
        ],
      ),
    );
  }
}
