import 'package:flutter/material.dart';
// import 'package:zero_project/pages/loading.dart';
import 'package:zero_project/pages/login.dart';
import 'package:zero_project/pages/hub.dart';
import 'package:zero_project/pages/profile.dart';

void main() {
  runApp(MaterialApp(
    home: Hub(),
    routes: {
      '/login': (context) => Login(),
      '/profile': (context) => Profile(),
    },
  ));
}
