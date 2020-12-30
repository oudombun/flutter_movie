import 'package:flutter/material.dart';
import 'package:fluttermovie/model/category.dart';

enum MovieType{
  MOVIES,
  TV_SERIES
}

class Movie {
  final String id;
  final String title;
  final String des;
  final String image;
  final List<String> categories;
  final MovieType movieType;
  final int runtime;
  final List<String> actor;
  final bool isnew;

  const Movie({
    @required this.id,
    @required this.title,
    @required this.des,
    @required this.image,
    @required this.categories,
    @required this.movieType,
    @required this.runtime,
    @required this.actor,
    @required this.isnew
  });
}