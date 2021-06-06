import 'dart:async';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:geolocator/geolocator.dart'; //import from pub.dev
import 'package:google_maps_flutter/google_maps_flutter.dart'; //import from pub.dev
import 'geoLocator.dart'; // get current position

class GoogleMapScreen extends StatefulWidget {
  final bool editable;
  final Position? previouslySavedPosition;

  GoogleMapScreen({this.editable = false, this.previouslySavedPosition});

  @override
  _GoogleMapScreenState createState() => _GoogleMapScreenState();
}
class _GoogleMapScreenState extends State<GoogleMapScreen> {
  /// default marker location sousse
  double lat = 35.821430;
  double lng = 10.634422;

  /// markers array
  final Map<String, Marker> _markers = {};

  Completer<GoogleMapController> _controller = Completer();

  @override
  void initState() {
    super.initState();

    /// update lat & long with old data
    if (widget.previouslySavedPosition != null) {
      setMarker(widget.previouslySavedPosition!.latitude, widget.previouslySavedPosition!.longitude, widget.editable);
    } else {
      /// get current position
      determinePosition().then((newPosition) {
        if (newPosition != null) {
          /// update lat & long with new data from map
          setMarker(newPosition.latitude, newPosition.longitude, widget.editable);
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            /// the main google map card
            GoogleMap(
              myLocationEnabled: true,
              myLocationButtonEnabled: true,
              onTap: (p) => setMarker(p.latitude, p.longitude, true),
              onMapCreated: (GoogleMapController controller) => _controller.complete(controller),
              initialCameraPosition: CameraPosition(target: LatLng(lat, lng), zoom: 16.0),
              markers: _markers.values.toSet(),
            ),

            /// a save button that returns chosen position
            Container(
              margin: EdgeInsets.symmetric(horizontal: 70, vertical: 20),
              child: ElevatedButton(
                onPressed: () {
                  Fluttertoast.showToast(msg: 'position = $lat - $lng');
                  Navigator.pop(context, [lat, lng]);
                },
                child: Container(
                  child: Text('save position'),
                  padding: EdgeInsets.symmetric(horizontal: 20),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// set marker on map with coordinates
  void setMarker(double lat, double long, bool editable) async {
    /// create a new marker
    final marker = Marker(
      draggable: editable,
      onDragEnd: (value) => setMarker(value.latitude, value.longitude, editable),
      markerId: MarkerId('curr_loc'),
      position: LatLng(lat, long),
    );

    /// save the position and marker to the State
    setState(() {
      this.lat = lat;
      this.lng = long;
      _markers.clear();
      _markers['Current Location'] = marker;
    });

    /// update map camera position
    final CameraPosition cameraPosition = CameraPosition(
      target: LatLng(lat, long),
      zoom: 18,
    );

    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(cameraPosition));
  }
}
