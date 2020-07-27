import 'package:flutter/material.dart';
import 'package:mero_kitchen_app/widgets/my_bottom_navigation.dart';

///****************************************************
///*** Created by Fady Fouad on 26-Jul-20 at 15:13.***
///****************************************************

class SettingsPage extends StatelessWidget {
  static final String routeName = "/favorites_page";
  final title;

  const SettingsPage({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(this.title)),
      body: Container(
        child: Text('Favorites'),
      ),
      bottomNavigationBar: CustomBottomNavBar(),
    );
  }
}
