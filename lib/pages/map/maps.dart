import 'dart:async';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapSample extends StatefulWidget {
  @override
  State<MapSample> createState() => MapSampleState();
}

class MapSampleState extends State<MapSample> {
  Completer<GoogleMapController> _controller = Completer();
  GoogleMapController newGoogleMapController;

  static final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(40.697470663168524, -1.8986709587741146 ),
    zoom: 14.4746,
  );

 
  Position currentPosition;
  var geoLocator=Geolocator();

  void locatePosition() async
  {
    Position position= await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
    currentPosition=position;

    LatLng latLatPosition=LatLng(position.latitude, position.longitude);
    CameraPosition mycameraPosition = CameraPosition(target: latLatPosition,zoom: 14);
newGoogleMapController.animateCamera(CameraUpdate.newCameraPosition(mycameraPosition));

  }


  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body:
       GoogleMap(
        mapType: MapType.normal,
        myLocationEnabled: true,
        zoomControlsEnabled: false,
        initialCameraPosition: _kGooglePlex,
        onMapCreated: (GoogleMapController controller) {
          newGoogleMapController=controller;
          setState((){
            locatePosition();
          });

        },
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: MyCurrentPosition,
        label: Text('My Position!'),
        icon: Icon(Icons.location_on),
      ),
    );
  }

  Future<void> MyCurrentPosition() async {
      locatePosition();
  }
}