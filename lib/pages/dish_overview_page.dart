import 'package:flutter/material.dart';

import '../widgets/dish_card.dart';

///****************************************************
///*** Created by Fady Fouad on 26-Jul-20 at 15:13.***
///****************************************************

class DishOverViewPage extends StatelessWidget {
  static final String routeName = "/dish_overview";
  final title;

  const DishOverViewPage({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
          Center(
              child: DishCard(
            title: 'فطير ',
            desc: 'Dish Description...Dish Description...Dish Description...Dish Description...Dish Description...Dish Description...Dish Description...Dish Description...Dish Description...Dish Description...',
            imageUrl: 'https://img.youtube.com/vi/I5ah_dfU5O4/0.jpg',
            isFav: false,
          )),
          Container(
            margin: const EdgeInsets.only(top: 38.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
//                  Icon(FontAwesomeIcons.checkDouble),
                FlatButton(
                  child: Text(
                    'Foods',
                    style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  color: Theme.of(context).backgroundColor,
                  padding: EdgeInsets.all(16.0),
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
                  color: Theme.of(context).backgroundColor,
                  padding: EdgeInsets.all(16.0),
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
                  padding: EdgeInsets.all(16.0),
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
    );
  }
}
