import 'package:flutter/material.dart';
import 'package:project/auth.dart';
import 'about.dart';
import 'profile.dart';
import 'map.dart';
import 'trends.dart';
import 'auth.dart';

class Mainpage extends StatelessWidget {
  // This widget is the root of your application.
  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            actions: <Widget>[
              FlatButton.icon(
                  icon: Icon(Icons.person),
                  label: Text('logout'),
                  onPressed: () async {
                    await _auth.signOut();
                  }),
            ],
            bottom: TabBar(
              tabs: [
                Tab(icon: Icon(Icons.accessibility_rounded)),
                Tab(
                    icon: Icon(
                  Icons.analytics_rounded,
                  color: Colors.greenAccent,
                )),
                Tab(icon: Icon(Icons.assignment_ind_rounded)),
                Tab(icon: Icon(Icons.map_outlined)),
                // Tab(icon: Icon(Icons.logout))
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Profile(),
              Trends(),
              About(),
              Map(),
            ],
          ),
        ),
      ),
    );
  }
}
