import 'package:flutter/material.dart';
// import 'database.dart';
// import 'package:provider/provider.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'userdata.dart';
// import 'userlist.dart';

class Profile extends StatelessWidget {
  // final UserData userData;

  @override
  Widget build(BuildContext context) {
    return
        // StreamProvider<List<UserData>>.value(
        //   value: DatabaseService().userdata,
        // child:
        Scaffold(
      body: Column(
        children: [
          // BrewList
          Container(
              child: Container(
            width: double.infinity,
            padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
            height: 200.0,
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage('images/profile.jpg'),
                    radius: 50.0,
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Text(
                    'James',
                    style: TextStyle(
                      fontSize: 22.0,
                      color: Colors.blue,
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                ],
              ),
            ),
          )),
          SizedBox(
            height: 20.0,
          ),
          Container(
            width: 300.00,
            child: RaisedButton(
                onPressed: () {},
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(80.0)),
                elevation: 0.0,
                padding: EdgeInsets.all(0.0),
                child: Ink(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.centerRight,
                        end: Alignment.centerLeft,
                        colors: [Colors.pink, Colors.blue]),
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  child: Container(
                    constraints:
                        BoxConstraints(maxWidth: 300.0, minHeight: 50.0),
                    alignment: Alignment.center,
                    child: Text(
                      'Edit Profile',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 26.0,
                          fontWeight: FontWeight.w300),
                    ),
                  ),
                )),
          ),
          Text(
            'Target Weight \n 40KG',
            style: TextStyle(fontSize: 20),
            textAlign: TextAlign.center,
          ),
          Expanded(
            child: GridView.count(
              padding: const EdgeInsets.all(20),
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              crossAxisCount: 3,
              children: <Widget>[
                Container(
                  height: 5,
                  width: 5,
                  padding: const EdgeInsets.all(3),
                  color: Colors.indigo[100],
                  child: Center(
                    child: Text('BMI \n 18.0', style: TextStyle(fontSize: 15)),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(3),
                  height: 5,
                  width: 5,
                  color: Colors.indigo[100],
                  child: Center(
                    child:
                        Text('Body Fat \n 12%', style: TextStyle(fontSize: 15)),
                  ),
                ),
                Container(
                  height: 5,
                  width: 5,
                  padding: const EdgeInsets.all(3),
                  color: Colors.indigo[100],
                  child: Center(
                    child:
                        Text('Weight \n 58KG', style: TextStyle(fontSize: 15)),
                  ),
                ),
                Container(
                  height: 5,
                  width: 5,
                  padding: const EdgeInsets.all(3),
                  color: Colors.indigo[100],
                  child: Center(
                    child: Text('Metalbolic Rate \n 1,458KJ',
                        style: TextStyle(fontSize: 15)),
                  ),
                ),
                Container(
                  height: 5,
                  width: 5,
                  padding: const EdgeInsets.all(3),
                  color: Colors.indigo[100],
                  child: Center(
                    child: Text('Muscle Mass \n 50.6KG',
                        style: TextStyle(fontSize: 15)),
                  ),
                ),
                Container(
                  height: 5,
                  width: 5,
                  padding: const EdgeInsets.all(3),
                  color: Colors.indigo[100],
                  child: Center(
                    child: Text('Hrs Exercised \n 3Hrs',
                        style: TextStyle(fontSize: 15)),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      // ),
    );
  }
}
