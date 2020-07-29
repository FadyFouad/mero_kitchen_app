import 'package:flutter/material.dart';
import 'package:mero_kitchen_app/providers/dish_provider.dart';
import 'package:provider/provider.dart';

///****************************************************
///*** Created by Fady Fouad on 28-Jul-20 at 18:36.***
///****************************************************

class DetailsPage extends StatelessWidget {
  static final routeName = "/DetailsPage";

  @override
  Widget build(BuildContext context) {
    final dishID = ModalRoute.of(context).settings.arguments as String;
    final dishData = Provider.of<DishProvider>(
      context,
      listen: false,
    ).dishes.firstWhere((element) => dishID == element.id);
    return Scaffold(
      body: Center(
        child: Container(
          child: Text(
            dishData.title,
            style: TextStyle(fontSize: 77),
          ),
        ),
      ),
    );
  }
}
