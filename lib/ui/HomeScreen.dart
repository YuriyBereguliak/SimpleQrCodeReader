import 'package:flutter/material.dart';
import 'package:qr_reader/ui/ScannedCodesScreen.dart';
import 'package:qr_reader/ui/SettingsScreen.dart';
import 'package:qr_reader/utils/Routes.dart' as route;

class HomeScreen extends StatefulWidget {
  //region StatefulWidget
  @override
  _HomeScreenState createState() {
    return _HomeScreenState();
  }
//endregion
}

class _HomeScreenState extends State<HomeScreen> {
  var _selectedTab = 0;
  final List<Widget> _widgetOptions = <Widget>[
    ScannedCodesScreen(),
    SettingsScreen()
  ];

  //region State
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedTab),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 50.0,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              IconButton(
                color: _selectedTab == 0
                    ? _selectedIconColor()
                    : _unselectedIconColor(),
                icon: Icon(Icons.list),
                onPressed: () {
                  _onTabItemTapped(0);
                },
              ),
              IconButton(
                color: _selectedTab == 1
                    ? _selectedIconColor()
                    : _unselectedIconColor(),
                icon: Icon(Icons.settings),
                onPressed: () {
                  _onTabItemTapped(1);
                },
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
//endregion

  //region Utility API
  void _onTabItemTapped(int index) {
    setState(() {
      _selectedTab = index;
    });
  }

  Color _selectedIconColor() => Theme.of(context).accentColor;

  Color _unselectedIconColor() => Color.fromRGBO(66, 106, 163, 1.0);
//endregion
}
