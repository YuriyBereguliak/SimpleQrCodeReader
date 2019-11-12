import 'package:flutter/material.dart';
import 'package:qr_reader/utils/Routes.dart' as route;
import 'package:qr_reader/utils/constants.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(appName),
      ),
      body: Center(child: Text("List of scanned items")),
      floatingActionButton: new FloatingActionButton(
          child: new Icon(Icons.add),
          onPressed: () {
            Navigator.pushNamed(context, route.scan);
          }),
    );
  }
}
