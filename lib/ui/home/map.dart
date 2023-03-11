

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import 'dart:async';

class TheMap extends StatefulWidget {
  @override
  _TheMapState createState() => _TheMapState();
}

class _TheMapState extends State<TheMap> {
  GoogleMapController controller;
  BitmapDescriptor _markerIcon;

  static final CameraPosition _kCentralPark = CameraPosition(
    target: LatLng(40.7822775, -73.9665504),
    zoom: 17,
  );

  @override
  Widget build(BuildContext context) {
    _createMarkerImageFromAsset(context);
    return new Scaffold(
      body: GoogleMap(
        mapType: MapType.normal,
        myLocationEnabled: true,
        markers: _createMarker(),
        initialCameraPosition: _kCentralPark,
        onMapCreated: _onMapCreated,
        circles: circles,
      ),
    );
  }

  Set<Marker> _createMarker() {
    return <Marker>[
      Marker(
        markerId: MarkerId("marker_1"),
        position: LatLng(40.7822775, -73.9665504),
        icon: _markerIcon,
      ),
    ].toSet();
  }

  Future<void> _createMarkerImageFromAsset(BuildContext context) async {
    if (_markerIcon == null) {
      final ImageConfiguration imageConfiguration =
          createLocalImageConfiguration(context, size: Size(30, 30));
      BitmapDescriptor.fromAssetImage(
              imageConfiguration, 'assets/images/icon_marker.png')
          .then(_updateBitmap);
    }
  }

  void _updateBitmap(BitmapDescriptor bitmap) {
    setState(() {
      _markerIcon = bitmap;
    });
  }

  Set<Circle> circles = Set.from([
    Circle(
      circleId: CircleId('1'),
      center: LatLng(40.7822775, -73.9665504),
      radius: 100,
      strokeWidth: 1,
      strokeColor: Colors.transparent,
      fillColor: Color(0x33FFC726),
    )
  ]);

  void _onMapCreated(GoogleMapController controllerParam) {
    setState(() {
      controller = controllerParam;
    });
  }
}
