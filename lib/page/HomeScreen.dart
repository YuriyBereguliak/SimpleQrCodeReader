import 'package:flutter/material.dart';
import 'package:qr_reader/utils/Routes.dart' as route;

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('List of scanned barcodes'),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 50.0,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              IconButton(
                color: Colors.blue,
                icon: Icon(Icons.list),
                onPressed: () {},
              ),
              IconButton(
                color: Colors.blue,
                icon: Icon(Icons.settings),
                onPressed: () {},
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.of(context).pushNamed(route.scan);
        },
        icon: Icon(Icons.add),
        label: const Text("Scan"),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
