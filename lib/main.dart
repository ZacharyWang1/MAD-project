import 'package:flutter/material.dart';
import 'package:project/auth.dart';
import 'package:provider/provider.dart';
import 'user.dart';
import 'drawer.dart';
// import 'home.dart';
import 'profile.dart';
import 'login.dart';

import 'signup.dart';
// import 'map.dart';
import 'trends.dart';
import 'about.dart';
import 'wrapper.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String title = 'Login';
  int index = 0;
  List<Widget> list = [
    Wrapper(),
    Login(),
    About(),
    Trends(),
    Profile(),
    Signup()
  ];

  @override
  Widget build(BuildContext context) {
    return StreamProvider<User>.value(
      value: AuthService().user,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          // body: Home(),
          // drawer: MyDrawer(),
          backgroundColor: Colors.grey,
          body: list[index],
          drawer: MyDrawer(onTap: (context, i, txt) {
            setState(() {
              index = i;
              title = txt;
              Navigator.pop(context);
            });
          }),
        ),
      ),
    );
  }
}
