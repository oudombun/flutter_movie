import 'package:flutter/material.dart';

import './model/category.dart';
import './model/movie.dart';

const DUMMY_CATE = const [
  Category(
      id: 'c1',
      name: 'Popular',
      color: Colors.lightGreen
  ),
  Category(
    id: 'c2',
    name: 'Newest',
      color: Colors.pink
  ),
  Category(
    id: 'c3',
    name: 'Top Rated',
      color: Colors.teal
  ),
  Category(
    id: 'c4',
    name: 'Upcoming',
      color: Colors.blue
  ),
  Category(
    id: 'c5',
    name: 'Now Playing',
      color: Colors.orange
  ),

];

const DUMMY_MOVIE = const [
  Movie(
    title: "The Croods: A New Age",
    des: "des 1",
    image: "https://image.tmdb.org/t/p/w500//tK1zy5BsCt1J4OzoDicXmr0UTFH.jpg",
    id: 'm1',
    categories: [
      'c1',
      'c2'
    ],
    movieType: MovieType.MOVIES,
    runtime: 112,
    actor: [
      "batman",
      "superman",
      "iron man"
    ],
    isnew:true
  ),
  Movie(
      title: "Honest Thief",
      des: "des 1",
      image: "https://image.tmdb.org/t/p/w500//2AwPvNHphpZBJDqjZKVuMAbvS0v.jpg",
      id: 'm2',
      categories: [
        'c1',
        'c3'
      ],
      movieType: MovieType.MOVIES,
      runtime: 112,
      actor: [
        "batman",
        "superman",
        "iron man"
      ],
      isnew:true
  ),
  Movie(
      title: "Wonder Woman 1984",
      des: "des 1",
      image: "https://image.tmdb.org/t/p/w500//di1bCAfGoJ0BzNEavLsPyxQ2AaB.jpg",
      id: 'm3',
      categories: [
        'c4',
        'c2'
      ],
      movieType: MovieType.MOVIES,
      runtime: 133,
      actor: [
        "batman",
        "superman",
        "iron man"
      ],
      isnew:false
  ),
  Movie(
      title: "After We Collided",
      des: "des 1",
      image: "https://image.tmdb.org/t/p/w500//kiX7UYfOpYrMFSAGbI6j1pFkLzQ.jpg",
      id: 'm4',
      categories: [
        'c1',
        'c5'
      ],
      movieType: MovieType.TV_SERIES,
      runtime: 102,
      actor: [
        "batman",
        "superman",
        "iron man"
      ],
      isnew:false
  ),
];

