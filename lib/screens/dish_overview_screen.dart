import 'package:flutter/material.dart';

import '../widgets/dish_card.dart';

///****************************************************
///*** Created by Fady Fouad on 26-Jul-20 at 15:13.***
///****************************************************

class DishOverViewScreen extends StatelessWidget {
  static final String routeName = "/dish_overview";
  final title;

  const DishOverViewScreen({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(this.title)),
      body: Container(
        child: Center(child: DishCard()),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.deepOrange,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.ac_unit),
            title: Text("1"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.ac_unit),
            title: Text("2"),
          ),
        ],
      ),
    );
  }
}
