import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

///****************************************************
///*** Created by Fady Fouad on 26-Jul-20 at 15:17.***
///****************************************************

class DishCard extends StatelessWidget {
  final title;
  final desc;
  final imageUrl;
  final isFav;

  const DishCard(
      {Key key,
      @required this.title,
      @required this.desc,
      @required this.imageUrl,
      this.isFav = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25.0),
          ),
          color: Theme.of(context).backgroundColor,
          margin: EdgeInsets.only(bottom: 40),
          // margin bottom to allow place the button
          child: Container(
            child: Column(
              children: <Widget>[
                Container(
                  height: 150,
                  width: 150,
                  margin: EdgeInsets.only(
                      top: 30.0, bottom: 20.0, left: 10.0, right: 10.0),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(imageUrl),
                    ),
                  ),
                ),
                Text(
                  title,
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    desc,
                    style: TextStyle(
                      fontSize: 22,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
            height: 600,
            width: 350.0,
          ),
        ),
        Positioned(
          bottom: 0,
          right: 130,
          width: 80,
          height: 80,
          child: FloatingActionButton(
              backgroundColor: Theme.of(context).accentColor,
              onPressed: () {},
              tooltip: 'إضافة إلي المفضلة',
              child: Icon(
                isFav ? FontAwesomeIcons.solidHeart:FontAwesomeIcons.heart,
                size: 30,
                color: Colors.white,
              )),
        ),
      ],
    );
//      Container(
//      height: 800.0,
//      width: 420.0,
//      child: Card(
//        elevation: 2.0,
//        child: Stack(
//          children: [
//            Padding(
//              padding: const EdgeInsets.all(8.0),
//              child: Column(
//                children: [
//                  Image.network('https://img.youtube.com/vi/I5ah_dfU5O4/0.jpg'),
//                  Text('https://img.youtube.com/vi/I5ah_dfU5O4/0.jpg')
//                ],
//              ),
//            ),
//            Container(
//              alignment:Alignment(0.8, -1.0),
//              child: FloatingActionButton.extended(
//                onPressed: () => {},
//                label: Icon(Icons.add),
//                shape: CircleBorder(),
//                elevation: 6.0,
//
//              ),
//            ),
//          ],
//        ),
//        shadowColor: Colors.grey,
//      ),
//    );
  }
}
