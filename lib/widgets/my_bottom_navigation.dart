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
  @override
  _CustomBottomNavBarState createState() => _CustomBottomNavBarState();
}

class _CustomBottomNavBarState extends State<CustomBottomNavBar> {
  int pageIndex = 1;
  final DishOverViewPage _dishOverView = DishOverViewPage(title: 'Title');
  final FavoritesPage _favoritesPage = FavoritesPage(title: 'Title');
  final SettingsPage _settingsPage = SettingsPage(title: 'Title');

  Widget _currentPage = DishOverViewPage(title: 'Title');

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
      appBar:AppBar(title: Text('مطبخ ميرو')),
      bottomNavigationBar: CurvedNavigationBar(
        key: _bottomNavigationKey,
        index: pageIndex,
        height: 50.0,
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
//            switch (index) {
//              case 0:
//                pageIndex = 0;
////                Navigator.pushNamed(context, FavoritesPage.routeName);
//                break;
//              case 1:
//                pageIndex = 1;
//                Navigator.pushNamed(context, DishOverViewPage.routeName);
//                break;
//              case 2:
//                pageIndex = 2;
////                Navigator.pushNamed(context, SettingsPage.routeName);
//                break;
//            }
            },
          );
        },
      ),
      body: Center(
        child: _currentPage
      ),
    );
  }
}
