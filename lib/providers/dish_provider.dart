import 'package:flutter/material.dart';
import 'package:mero_kitchen_app/model/dish.dart';

///****************************************************
///*** Created by Fady Fouad on 28-Jul-20 at 16:21.***
///****************************************************

class DishProvider with ChangeNotifier {
  List<Dish> _dishes = [
    Dish(
        id: '1',
        title: "title 1",
        imageUrl: "https://img.youtube.com/vi/I5ah_dfU5O4/0.jpg",
        desc: 'deception 1',
        category: 'cat 1',
        complexity: Complexity.EASY,
        affordability: Affordability.Affordable,
        duration: 15,
        ingredients: ['', ''],
        steps: ['', ''],
        videoUrl: '',
        isGlutenFree: true,
        isLactoseFree: true,
        isVegan: true,
        isVegetarian: true,
        isFav: true),
    Dish(
        id: '3',
        title: "title 3",
        imageUrl: "https://img.youtube.com/vi/I5ah_dfU5O4/0.jpg",
        desc: 'deception 3',
        category: 'cat 3',
        complexity: Complexity.EASY,
        affordability: Affordability.Affordable,
        duration: 15,
        ingredients: ['', ''],
        steps: ['', ''],
        videoUrl: '',
        isGlutenFree: true,
        isLactoseFree: true,
        isVegan: true,
        isVegetarian: true,
        isFav: true),
    Dish(
        id: '2',
        title: "title 2",
        imageUrl: "https://img.youtube.com/vi/I5ah_dfU5O4/0.jpg",
        desc: 'deception 2',
        category: 'cat 2',
        complexity: Complexity.EASY,
        affordability: Affordability.Affordable,
        duration: 15,
        ingredients: ['', ''],
        steps: ['', ''],
        videoUrl: '',
        isGlutenFree: true,
        isLactoseFree: true,
        isVegan: true,
        isVegetarian: true,
        isFav: false)
  ];

  List<Dish> get dishes {
    return [..._dishes];
  }

  void addDish(Dish dish) {
    _dishes.add(dish);
    notifyListeners();
  }
}
