import 'dart:async';

import 'package:flutter/material.dart';
import 'package:qr_reader/screens/HomeScreen.dart';
import 'package:qr_reader/utilities/constants.dart';

class SplashScreen extends StatefulWidget {
  //region StatefulWidget
  @override
  State<StatefulWidget> createState() {
    return new SplashScreenState();
  }
//endregion
}

class SplashScreenState extends State<SplashScreen> {
  //region State
  @override
  void initState() {
    super.initState();
    new Timer(new Duration(milliseconds: 2000), () {
      checkIsFirstLaunch();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new Container(
        color: Colors.black12,
        alignment: Alignment.center,
        child: new Text(
          appName,
          style: new TextStyle(
              color: Colors.white, fontSize: 24.0, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

//endregion

  //region Utility API
  Future checkIsFirstLaunch() async {
    Navigator.of(context).pushReplacement(
        new MaterialPageRoute(builder: (context) => HomeScreen()));
  }
//endregion
}
