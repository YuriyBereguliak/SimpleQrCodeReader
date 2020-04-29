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
        theme: ThemeData(
          // Define the default brightness and colors.
          brightness: Brightness.light,
          primaryColor: Colors.lightBlue[800],
          accentColor: Colors.cyan[600],

          // Define the default font family.
          fontFamily: 'Roboto',

          // Define the default TextTheme. Use this to specify the default
          // text styling for headlines, titles, bodies of text, and more.
          textTheme: TextTheme(
            headline: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
            title: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
            body1: TextStyle(fontSize: 14.0, fontWeight: FontWeight.normal),
            caption: TextStyle(fontSize: 12.0, fontWeight: FontWeight.w500),
          ),
        ),
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
