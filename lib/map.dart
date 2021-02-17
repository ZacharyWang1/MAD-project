import 'package:flutter/material.dart';
import 'googlemap.dart';

class Map extends StatelessWidget {
  @override
  Widget build(BuildContext content) {
    return Scaffold(
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Google Maps', style: TextStyle(fontSize: 24)),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            content,
            MaterialPageRoute(builder: (context) => Googlemapscreen()),
          );
        },
        tooltip: 'Google Maps',
        child: Icon(Icons.pin_drop_rounded),
      ),
    );
  }
}
