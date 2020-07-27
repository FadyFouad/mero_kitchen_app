import 'package:flutter/material.dart';

///****************************************************
///*** Created by Fady Fouad on 26-Jul-20 at 15:13.***
///****************************************************

class SettingsPage extends StatelessWidget {
  static final String routeName = "/settings_page";
  final title;

  const SettingsPage({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('Settings'),
    );
  }
}
