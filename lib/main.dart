import 'package:flutter/material.dart';
import 'package:qr_reader/screens/HomeScreen.dart';
import 'package:qr_reader/screens/QrCodeDetailsScreen.dart';
import 'package:qr_reader/screens/QrCodeReaderScreen.dart';
import 'package:qr_reader/screens/SplashScreen.dart';
import 'package:qr_reader/utilities/constants.dart';

import 'utilities/Routes.dart' as route;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  //region StatelessWidget
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: appName, initialRoute: route.splash, routes: {
      route.splash: (context) => SplashScreen(),
      route.home: (context) => HomeScreen(),
      route.scan: (context) => QrCodeReaderScreen(),
      route.details: (context) => QrCodeDetailsScreen()
    });
  }
//endregion
}
