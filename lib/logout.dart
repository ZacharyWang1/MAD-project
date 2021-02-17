import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:project/about.dart';
import 'about.dart';
import 'package:project/login.dart';

class Logout extends StatefulWidget {
  Logout({Key key}) : super(key: key);

  @override
  _LogoutState createState() => _LogoutState();
}

enum Answer { Yes, NO, MAYBE }

class _LogoutState extends State<Logout> {
  String _value = '';

  void _setValue(String value) => setState(() => _value = value);

  Future _askUser() async {
    switch (await showDialog(
      context: context,
      builder: (context) {
        return SimpleDialog(
          title: Text('Do You wish to login out?'),
          children: <Widget>[
            SimpleDialogOption(
              child: Text('Yes'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Login()),
                );
              },
            ),
            SimpleDialogOption(
              child: Text('No'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => About()),
                );
              },
            ),
          ],
        );
      },
    )) {
      case Answer.Yes:
        _setValue('Yes');
        break;
      case Answer.NO:
        _setValue('NO');
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(_value),
        RaisedButton(
          onPressed: () => _askUser(),
          child: Text('Log Out '),
        )
      ],
    ));
  }
}
