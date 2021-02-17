import 'package:flutter/material.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:provider/provider.dart';
import 'userdata.dart';

class Userlist extends StatefulWidget {
  @override
  _UserlistState createState() => _UserlistState();
}

class _UserlistState extends State<Userlist> {
  @override
  Widget build(BuildContext context) {
    final userdata = Provider.of<List<UserData>>(context);

    // userdata.forEach((userdata) {

    // });

    // for (var doc in userdata.documents) {
    //   print(doc.data);
    // }

    // return Container();
  }
}
