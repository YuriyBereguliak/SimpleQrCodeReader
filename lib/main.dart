import 'package:flutter/material.dart';
import 'package:qr_reader/screens/SplashScreen.dart';
import 'package:qr_reader/utilities/constants.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: appName, home: new SplashScreen());
  }
}
