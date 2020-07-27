
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mero_kitchen_app/pages/dish_overview_page.dart';
import 'package:mero_kitchen_app/widgets/my_bottom_navigation.dart';

///****************************************************
///*** Created by Fady Fouad on 26-Jul-20 at 17:35.***
///****************************************************

class AuthScreen extends StatefulWidget {
  static final String path = "lib/src/pages/login/auth_screen.dart";
  static final String routeName = "/AuthScreen";

  @override
  _AuthScreenState createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  final String backImg = "assets/images/food_bg.jpg";
  bool formVisible;
  int _formsIndex;

  @override
  void initState() {
    super.initState();
    formVisible = false;
    _formsIndex = 1;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/food_bg.jpg"),
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(
        children: <Widget>[
          Container(
            color: Colors.black54,
            child: Column(
              children: <Widget>[
                const SizedBox(height: kToolbarHeight + 40),
                Expanded(
                  child: Column(
                    children: <Widget>[
                      Text(
                        "مطبخ ميرو",
                        style: TextStyle(
                          color: Colors.white,
                          shadows: [
                            Shadow(
                              offset: Offset(10.0, 10.0),
                              blurRadius: 4.0,
                              color: Colors.white,
                            ),
                          ],
                          fontWeight: FontWeight.w600,
                          fontSize: 38.0,
                        ),
                      ),
                      const SizedBox(height: 10.0),
                      Text(
//                        "Welcome to this awesome login app. \n You are awesome"
                        "",
                        style: TextStyle(
                          color: Colors.white70,
                          fontSize: 18.0,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10.0),
                Row(
                  children: <Widget>[
                    const SizedBox(width: 10.0),
                    Expanded(
                      child: RaisedButton(
                        color: Colors.grey.shade700,
                        textColor: Colors.white,
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: Text("تسجيل",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16)),
                        onPressed: () {
                          setState(() {
                            formVisible = true;
                            _formsIndex = 2;
                          });
                        },
                      ),
                    ),
                    const SizedBox(width: 10.0),
                    Expanded(
                      child: RaisedButton(
                        color: Colors.red,
                        textColor: Colors.white,
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: Text("دخول",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16)),
                        onPressed: () {
                          setState(() {
                            formVisible = true;
                            _formsIndex = 1;
                          });
                        },
                      ),
                    ),
                    const SizedBox(width: 10.0),
                  ],
                ),
                const SizedBox(height: 40.0),
                OutlineButton.icon(
                  borderSide: BorderSide(color: Colors.red),
                  color: Colors.red,
                  textColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  icon: Icon(
                    FontAwesomeIcons.google,
                    color: Colors.red,
                  ),
                  label: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "تسجيل باستخدام حساب جوجل",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                  ),
                  onPressed: () {}, //TOdo use google auth
                ),
                const SizedBox(height: 20.0),
                InkWell(
                  child: FlatButton(
                    child: Text('تخطي الدخول',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16,color: Colors.white)),
                    onPressed: () => Navigator.of(context)
                        .pushNamed(CustomBottomNavBar.routeName),
                  ),
                ),
                const SizedBox(height: 40.0),
              ],
            ),
          ),
          AnimatedSwitcher(
            duration: Duration(milliseconds: 200),
            child: (!formVisible)
                ? null
                : Container(
                    color: Colors.black54,
                    alignment: Alignment.center,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            RaisedButton(
                              textColor: _formsIndex == 1
                                  ? Colors.white
                                  : Colors.black,
                              color:
                                  _formsIndex == 1 ? Colors.red : Colors.white,
                              child: Text("دخول",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16)),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20.0)),
                              onPressed: () {
                                setState(() {
                                  _formsIndex = 1;
                                });
                              },
                            ),
                            const SizedBox(width: 10.0),
                            RaisedButton(
                              textColor: _formsIndex == 2
                                  ? Colors.white
                                  : Colors.black,
                              color:
                                  _formsIndex == 2 ? Colors.red : Colors.white,
                              child: Text("تسجيل",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16)),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20.0)),
                              onPressed: () {
                                setState(() {
                                  _formsIndex = 2;
                                });
                              },
                            ),
                            const SizedBox(width: 10.0),
                            IconButton(
                              color: Colors.white,
                              icon: Icon(Icons.clear),
                              onPressed: () {
                                setState(() {
                                  formVisible = false;
                                });
                              },
                            )
                          ],
                        ),
                        Container(
                          child: AnimatedSwitcher(
                            duration: Duration(milliseconds: 300),
                            child:
                                _formsIndex == 1 ? LoginForm() : SignupForm(),
                          ),
                        )
                      ],
                    ),
                  ),
          )
        ],
      ),
    ));
  }
}

class LoginForm extends StatelessWidget {
  const LoginForm({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.black54,
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: ListView(
        shrinkWrap: true,
        padding: const EdgeInsets.all(16.0),
        children: <Widget>[
          TextField(
            decoration: InputDecoration(
              hintText: "Enter email",
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 10.0),
          TextField(
            obscureText: true,
            decoration: InputDecoration(
              hintText: "Enter password",
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 10.0),
          RaisedButton(
            color: Colors.red,
            textColor: Colors.white,
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Text("دخول",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16)),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}

class SignupForm extends StatelessWidget {
  const SignupForm({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.black54,
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: ListView(
        shrinkWrap: true,
        padding: const EdgeInsets.all(16.0),
        children: <Widget>[
          TextField(
            decoration: InputDecoration(
              hintText: "Enter name",
              border: OutlineInputBorder(),
            ),
          ),
          TextField(
            decoration: InputDecoration(
              hintText: "Enter email",
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 10.0),
          TextField(
            obscureText: true,
            decoration: InputDecoration(
              hintText: "Enter password",
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 10.0),
          TextField(
            obscureText: true,
            decoration: InputDecoration(
              hintText: "Confirm password",
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 10.0),
          RaisedButton(
            color: Colors.red,
            textColor: Colors.white,
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Text("تسجيل",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16)),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
