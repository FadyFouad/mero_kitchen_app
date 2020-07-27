import 'package:flutter/material.dart';

///****************************************************
///*** Created by Fady Fouad on 26-Jul-20 at 15:17.***
///****************************************************

class DishCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Card(
          color: Colors.red,
          margin: EdgeInsets.only(bottom: 40),
          // margin bottom to allow place the button
          child: Container(
            child: Column(
              children: <Widget>[
                Image.network('https://img.youtube.com/vi/I5ah_dfU5O4/0.jpg'),
                Text(
                  'https://img.youtube.com/vi/I5ah_dfU5O4/0.jpg',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            height: 750,
            width: 420.0,
          ),
        ),
        Positioned(
          bottom: 0,
          right: 170,
          width: 80,
          height: 80,
          child: FloatingActionButton(
              backgroundColor: Color(0xFFF2638E),
              onPressed: () {},
              child: Icon(
                Icons.favorite,
                size: 50,
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
