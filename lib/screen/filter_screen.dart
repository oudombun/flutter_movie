import 'package:flutter/material.dart';
import 'package:fluttermovie/model/movie.dart';
import '../widget/custom_drawer.dart';

class FilterScreen extends StatelessWidget {
  static const routeName="filter";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Filter"),
      ),
      drawer: CustomDrawer(),
      body: Center(
        child: Text("Filter"),
      ),
    );
  }
}
