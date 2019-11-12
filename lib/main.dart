import 'package:flutter/material.dart';
import 'package:qr_reader/page/HomeScreen.dart';
import 'package:qr_reader/page/QrCodeDetailsScreen.dart';
import 'package:qr_reader/page/QrCodeReaderScreen.dart';
import 'package:qr_reader/page/SplashScreen.dart';
import 'package:qr_reader/utils/constants.dart';

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
