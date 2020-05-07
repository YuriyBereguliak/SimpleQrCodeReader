import 'package:flutter/material.dart';

class SettingsScreen extends StatefulWidget {
  @override
  State createState() {
    return _SettingsState();
  }
}

class _SettingsState extends State<SettingsScreen> {
  bool _isStartScanner = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Settings"),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text("Launch settings",
                style: Theme.of(context).textTheme.headline6),
            SwitchListTile(
                title: Text(
                  "Start from scan code",
                  style: Theme.of(context).textTheme.bodyText1,
                ),
                value: _isStartScanner,
                contentPadding: EdgeInsets.all(0),
                onChanged: (bool value) {
                  setState(() {
                    _isStartScanner = value;
                    print("Result :: $_isStartScanner");
                  });
                })
          ],
        ),
      ),
    );
  }
}
