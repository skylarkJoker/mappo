import 'package:flutter/material.dart';

import 'package:zero_project/pages/login.dart';
import 'package:zero_project/pages/hub.dart';
import 'package:zero_project/pages/myhistory.dart';
import 'package:zero_project/pages/profile.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart' as DotEnv;
import 'package:zero_project/pages/wizard.dart';
import 'package:zero_project/pages/circles.dart';

bool showWizard = false;
Future main() async {
  await DotEnv.load(fileName: ".env");

  runApp(MaterialApp(
      initialRoute: '/login',
      // initialRoute: showWizard ? '/wizard' : '/',
      routes: {
        '/': (context) => Hub(),
        '/login': (context) => Login(),
        '/profile': (context) => Profile(),
        '/wizard': (context) => Wizard(),
        '/mycircles': (context) => Circles(),
        '/myhistory': (context) => MyHistory(),
      },
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.teal,
        accentColor: Color(0xFFFFFF),
      )));
}
