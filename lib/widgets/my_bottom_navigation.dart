import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mero_kitchen_app/pages/dish_overview_page.dart';
import 'package:mero_kitchen_app/pages/favorites_page.dart';
import 'package:mero_kitchen_app/pages/settings_page.dart';

///****************************************************
///*** Created by Fady Fouad on 27-Jul-20 at 15:27.***
///****************************************************

class CustomBottomNavBar extends StatefulWidget {
  static final routeName = "/CustomBottomNavBar";
  @override
  _CustomBottomNavBarState createState() => _CustomBottomNavBarState();
}

class _CustomBottomNavBarState extends State<CustomBottomNavBar> {
  int pageIndex = 1;
  final DishOverViewPage _dishOverView = DishOverViewPage();
  final FavoritesPage _favoritesPage = FavoritesPage();
  final SettingsPage _settingsPage = SettingsPage();

  Widget _currentPage = DishOverViewPage();

  Widget _selectedPage(int pageIndex) {
    switch (pageIndex) {
      case 0:
        return _favoritesPage;
        break;
      case 1:
        return _dishOverView;
        break;
      case 2:
        return _settingsPage;
        break;
      default:
        return _dishOverView;
        break;
    }
  }

  GlobalKey _bottomNavigationKey = GlobalKey();

//  int pageIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
//      appBar: AppBar(title: Text('مطبخ ميرو')),
      bottomNavigationBar: CurvedNavigationBar(
        key: _bottomNavigationKey,
        index: pageIndex,
        height: 60.0,
        items: <Widget>[
          Icon(FontAwesomeIcons.heart, size: 30),
          Icon(FontAwesomeIcons.home, size: 30),
          Icon(Icons.compare_arrows, size: 30),
        ],
        color: Theme.of(context).accentColor,
        buttonBackgroundColor: Theme.of(context).primaryColor,
        backgroundColor: Theme.of(context).primaryColorDark,
        animationCurve: Curves.easeInOut,
        animationDuration: Duration(milliseconds: 600),
        onTap: (index) {
          setState(
            () {
              _currentPage = _selectedPage(index);
              print(_currentPage);
            },
          );
        },
      ),
      body: Center(child: _currentPage),
    );
  }
}
