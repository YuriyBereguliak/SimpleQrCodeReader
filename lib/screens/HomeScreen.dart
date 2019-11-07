import 'package:flutter/material.dart';
import 'package:qr_reader/screens/QrCodeReaderScreen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HomeScreen'),
      ),
      body: Center(child: Text("List of scanned items")),
      floatingActionButton: new FloatingActionButton(
          child: new Icon(Icons.add),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => QrCodeReaderScreen()));
          }),
    );
  }
}
