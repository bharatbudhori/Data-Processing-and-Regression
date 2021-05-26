import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
//import 'package:location/location.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Great Places',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        accentColor: Colors.amber,
      ),
      home: GoogleMapPage(),
    );
  }
}

class GoogleMapPage extends StatefulWidget {
  @override
  _GoogleMapPageState createState() => _GoogleMapPageState();
}

class _GoogleMapPageState extends State<GoogleMapPage> {
  // Future<void> _getCurrentUserLocation() async {
  //   final locData = await Location().getLocation();

  //   LatLng myTarget = LatLng(locData.latitude, locData.longitude);
  //   return myTarget;
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Google Map Live Tracking'),
      ),
      body: Column(
        children: [
          Expanded(
              child: GoogleMap(
            mapType: MapType.normal,
            initialCameraPosition: CameraPosition(
              target: LatLng(28.7041, 77.1025),
              zoom: 18,
            ),
            onMapCreated: (GoogleMapController controller) {},
          ))
        ],
      ),
    );
  }
}

class PlaceLocation {
  double latitude;
  double longitude;
}
