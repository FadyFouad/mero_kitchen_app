import 'package:flutter/material.dart';
import 'package:mero_kitchen_app/screens/dish_overview_screen.dart';

import 'screens/auth_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'مطبخ ميرو',
      theme: ThemeData(
        // This is the theme of your application.
        primarySwatch: Colors.red,
        primaryColor: Colors.white,
        primaryColorDark: Colors.white,
        accentColor: Color.fromRGBO(255, 120, 91, 1),
        backgroundColor: Color.fromRGBO(222, 232, 255, 1),
        fontFamily: 'Scheherazade',
        appBarTheme: AppBarTheme(
          textTheme: TextTheme(
            headline6: TextStyle(
                fontFamily: 'Scheherazade',
                fontSize: 24.0,),
          ),
        ),
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      darkTheme: ThemeData.dark().copyWith(
        primaryColor: Color.fromRGBO(39, 43, 46, 1),
        primaryColorDark: Color.fromRGBO(39, 43, 46, 1),
        backgroundColor: Color.fromRGBO(66, 66, 66, 1),
        scaffoldBackgroundColor: Color.fromRGBO(39, 43, 46, 1),
        accentColor: Color.fromRGBO(243, 122, 39, 1),
//        TextColor: Color.fromRGBO(244, 125, 41,100),
        textTheme: ThemeData.dark().textTheme.apply(
              fontFamily: 'Scheherazade',
            ),
        appBarTheme: AppBarTheme(
          textTheme: TextTheme(
            headline6: TextStyle(fontFamily: 'Scheherazade', fontSize: 24),
          ),
        ),
      ),
      themeMode: ThemeMode.light,
      routes: {
        DishOverViewScreen.routeName: (context) => DishOverViewScreen(
              title: "مطبخ ميرو",
            ),
        AuthScreen.routeName: (context) => AuthScreen(),
      },
      home: AuthScreen(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({this.title});

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text(widget.title)),
      ),
      body: Center(
          child: Text(
        'مطبخ ميرو',
        style: TextStyle(fontSize: 80),
      )),
    );
  }
}
