import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:qr_reader/utils/Routes.dart' as route;

class ScannedCodesScreen extends StatefulWidget {
  //region StatefulWidget
  @override
  State createState() {
    return _ScannedCodesState();
  }
//endregion
}

class _ScannedCodesState extends State<ScannedCodesScreen> {
  final List<String> _items = [
    "1",
    "2",
    "3",
    "4",
    "5",
    "6",
    "7",
    "8",
    "9",
    "10"
  ];

  //region State
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: _items.length,
        itemBuilder: (BuildContext context, int index) {
          return _buildListItem(index);
        },
      ),
    );
  }

  //endregion

  //region Utility API
  Widget _buildListItem(int index) {
    return Card(
      child: InkWell(
        child: ListTile(
          leading: Icon(Icons.camera_alt),
          title: Text("type"),
          subtitle: Text(_items.elementAt(index)),
          onTap: () {
            Navigator.of(context).pushNamed(route.details);
          },
        ),
      ),
    );
  }
//endregion
}
