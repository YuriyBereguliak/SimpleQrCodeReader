import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:qr_reader/src/blocs/scanned_items_bloc.dart';
import 'package:qr_reader/src/utils/Routes.dart' as route;

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
  ScannedItemsBloc _scannedItemsBloc = ScannedItemsBloc();
  //region State
  @override
  void initState() {
    super.initState();
    _scannedItemsBloc.loadScannedItems();
  }

  @override
  void dispose() {
    _scannedItemsBloc.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Scanned items"),
      ),
      body: StreamBuilder(
          stream: _scannedItemsBloc.scannedItemsStream,
          builder: (context, AsyncSnapshot<List<String>> snapshot) {
            if (snapshot.hasData) {
              return _buildList(snapshot);
            } else {
              return _buildEmptyPlaceholder();
            }
          }),
    );
  }

  //endregion

  //region Utility API
  Widget _buildList(AsyncSnapshot<List<String>> snapshot) {
    return ListView.builder(
        itemCount: snapshot.data.length,
        itemBuilder: (BuildContext context, int index) {
          return _buildListItem(snapshot.data.elementAt(index));
        });
  }

  Widget _buildListItem(String value) {
    return Card(
      child: InkWell(
        child: ListTile(
          leading: Icon(Icons.camera_alt),
          title: Text(value),
          onTap: () {
            Navigator.of(context).pushNamed(route.details,
                arguments: QrCodeDetailsArgument(value));
          },
        ),
      ),
    );
  }

  Widget _buildEmptyPlaceholder() {
    return Center(
      child: Text("You haven't scanned any code yet"),
    );
  }
//endregion
}
