import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Mapscreen extends StatefulWidget {
  //MapScreen({Key key}) : super(key: key);

  @override
  _MapscreenState createState() => _MapscreenState();
}

class _MapscreenState extends State<Mapscreen> {
  LatLng _pickedLocation;

  void _selectLocation(LatLng position) {
    setState(() {
      _pickedLocation = position;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Select a Point'),
      ),
      body: GoogleMap(
        initialCameraPosition: CameraPosition(
          target: LatLng(
            10.4166055, //longitude
            5.4685613, //latitude
          ),
          zoom: 16,
        ),
        onTap: _selectLocation,
        markers: {
          Marker(
            markerId: MarkerId('m1'),
            position: _pickedLocation ??
                LatLng(
                  10.4166055, //longitude
                  5.4685613, //latitude
                ),
          ),
        },
      ),
    );
  }
}
