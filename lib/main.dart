import 'package:flutter/material.dart';
import 'package:zero_project/pages/loading.dart';
import 'package:zero_project/pages/login.dart';
import 'package:zero_project/pages/hub.dart';
// import 'package:mapbox_gl/mapbox_gl.dart';
// import 'package:location/location.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => Loading(),
      '/home': (context) => Hub(),
      '/login': (context) => Login()
    },
  ));
}
