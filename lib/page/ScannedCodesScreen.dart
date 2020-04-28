import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ScannedCodesScreen extends StatefulWidget {
  //region StatefulWidget
  @override
  State createState() {
    return _ScannedCodesState();
  }
//endregion
}

class _ScannedCodesState extends State<ScannedCodesScreen> {
  final List<String> _items = ["1", "2", "3", "4"];

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
    return Container(
      color: Colors.white,
      child: Text(_items.elementAt(index)),
    );
  }
//endregion
}
