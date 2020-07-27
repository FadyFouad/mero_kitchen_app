import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
        child: Column(
          children: [
            Container(
              alignment: Alignment.topLeft,
              margin: EdgeInsets.all(30.0),
              child: Text(
                'Title Here',
                style: TextStyle(fontSize: 28.0, fontWeight: FontWeight.bold),
              ),
            ),
            Center(child: DishCard()),
            Container(
              margin: const EdgeInsets.only(top: 38.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(FontAwesomeIcons.checkDouble),
                  FlatButton(
                    child: Text(
                      'Foods',
                      style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    color: Theme.of(context).accentColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    onPressed: () => {},
                  ),
                  FlatButton(
                    child: Text(
                      'Foods',
                      style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    color: Theme.of(context).accentColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    onPressed: () => {},
                  ),
                  FlatButton(
                    child: Text(
                      'Foods',
                      style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    color: Theme.of(context).accentColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    onPressed: () => {},
                  ),
                ],
              ),
            )
          ],
        ),
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
