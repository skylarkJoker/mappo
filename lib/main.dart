import 'package:flutter/material.dart';
// import 'package:zero_project/pages/loading.dart';
import 'package:zero_project/pages/login.dart';
import 'package:zero_project/pages/hub.dart';
import 'package:zero_project/pages/profile.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart' as DotEnv;
import 'package:zero_project/pages/wizard.dart';

bool showWizard = true;
Future main() async {
  await DotEnv.load(fileName: ".env");

  runApp(MaterialApp(
    initialRoute: showWizard ? '/wizard' : '/',
    routes: {
      '/': (context) => Hub(),
      '/login': (context) => Login(),
      '/profile': (context) => Profile(),
      '/wizard': (context) => Wizard(),
    },
  ));
}
