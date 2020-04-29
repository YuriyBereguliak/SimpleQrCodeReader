import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:qr_reader/utils/Routes.dart' as route;

import 'QrCodeDetailsScreen.dart';

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
    "123654",
    "215964",
    "33574656",
    "4646849",
    "5354354",
    "61651651",
    "73536543",
    "8654654",
    "93354365466",
    "1066454654654658"
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
            Navigator.of(context).pushNamed(route.details,
                arguments: QrCodeDetailsArgument(_items.elementAt(index)));
          },
        ),
      ),
    );
  }
//endregion
}
