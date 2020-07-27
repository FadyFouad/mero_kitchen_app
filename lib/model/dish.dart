import 'package:flutter/cupertino.dart';

///****************************************************
///*** Created by Fady Fouad on 26-Jul-20 at 15:22.***
///****************************************************

enum Complexity {
  HARD,
  NORMAL,
  EASY,
}
enum Affordability {
  Affordable,
  PRICeY,
  LUXURIOUS,
}

class Dish {
  final String id;
  final String title;
  final String desc;
  final String category;
  final String imageUrl;
  final String videoUrl;
  final bool isFav;
  final int duration;
  final List<String> ingredients;
  final List<String> steps;
  final Complexity complexity;
  final Affordability affordability;
  final bool isGlutenFree;
  final bool isLactoseFree;
  final bool isVegan;
  final bool isVegetarian;

  Dish({
    @required this.id,
    @required this.title,
    @required this.desc,
    @required this.category,
    @required this.imageUrl,
    @required this.videoUrl,
    @required this.duration,
    @required this.ingredients,
    @required this.steps,
    @required this.complexity,
    @required this.affordability,
    @required this.isGlutenFree,
    @required this.isLactoseFree,
    @required this.isVegan,
    @required this.isVegetarian,
    this.isFav=false,
  });
}
