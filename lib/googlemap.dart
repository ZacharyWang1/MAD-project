import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Googlemapscreen extends StatefulWidget {
  @override
  _GooglemapscreenState createState() => _GooglemapscreenState();
}

class _GooglemapscreenState extends State<Googlemapscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          GoogleMap(
            initialCameraPosition: CameraPosition(
              target: LatLng(1.3800, 103.8489),
              zoom: 15,
            ),
          ),
          Container(
            alignment: Alignment.bottomCenter,
            padding: EdgeInsets.fromLTRB(0, 0, 0, 32),
            child: Text('Distance Tracker'),
          )
        ],
      ),
    );
  }
}
