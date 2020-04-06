import 'package:flutter/material.dart';
import 'package:qr_reader/utils/constants.dart';

import 'page/HomeScreen.dart';
import 'page/QrCodeDetailsScreen.dart';
import 'page/QrCodeReaderScreen.dart';
import 'page/SplashScreen.dart';
import 'utils/Routes.dart' as route;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  //region StatelessWidget
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: appName,
        debugShowCheckedModeBanner: false,
        initialRoute: route.splash,
        routes: {
          route.splash: (context) => SplashScreen(),
          route.home: (context) => HomeScreen(),
          route.scan: (context) => QrCodeReaderScreen(),
          route.details: (context) => QrCodeDetailsScreen()
        });
  }
//endregion
}
