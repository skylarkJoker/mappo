import 'package:flutter/material.dart';
// import 'package:mapbox_gl/mapbox_gl.dart';
// import 'package:location/location.dart';

void main() {
  runApp(MaterialApp(home: MyMap()));
}

class MyMap extends StatelessWidget {
  const MyMap({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Map'),
        centerTitle: true,
        backgroundColor: Colors.blueGrey[800],
      ),
      // body: MapboxMap(
      //   accessToken:
      //   styleString: 'mapbox://styles/jovis1667/ckl9k0bdf10g217ptf7pxi9m2',
      //   initialCameraPosition:
      //       CameraPosition(zoom: 15.0, target: LatLng(-61.299331, 10.613791)),
      // ),
      body: Column(
        children: [
          Text(
            'Welcome to the Aether',
            style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
          ),
          Text(
            'Another text for demonstration',
            style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.normal),
          ),
          Image(
            image: NetworkImage('https://via.placeholder.com/300'),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Text(
          'click',
          style: TextStyle(color: Colors.black),
        ),
        onPressed: () => {},
        backgroundColor: Colors.deepOrange[400],
      ),
    );
  }
}
