import 'package:flutter/material.dart';
import 'package:mero_kitchen_app/providers/dish_provider.dart';
import 'package:mero_kitchen_app/widgets/dish_card.dart';
import 'package:provider/provider.dart';

///****************************************************
///*** Created by Fady Fouad on 26-Jul-20 at 15:13.***
///****************************************************

class DishOverViewPage extends StatelessWidget {
  static final String routeName = "/dish_overview";

  @override
  Widget build(BuildContext context) {
    final dishData = Provider.of<DishProvider>(context);
    final dishList = dishData.dishes;
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
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(32.0),
                  child: Center(
                    child: DishCard(
                      title: dishList[index].title,
                      desc: dishList[index].desc,
                      imageUrl: dishList[index].imageUrl,
                      isFav: dishList[index].isFav,
                      onCardTap: ()=>{
                        print(dishList[index].title)
                      },
                    ),
                  ),
                );
              },
              itemCount: dishList.length,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 38.0),
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
