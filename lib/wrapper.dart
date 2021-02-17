import 'package:flutter/material.dart';
import 'package:project/authenticate.dart';
import 'package:project/mainpage.dart';
// import 'package:project/signin.dart';
import 'package:provider/provider.dart';
import 'user.dart';
// import 'package:project/signin.dart';
// import 'mainpage.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<User>(context);
    print(user);

    if (user == null) {
      return Authenticate();
    } else {
      return Mainpage();
    }
  }
}
