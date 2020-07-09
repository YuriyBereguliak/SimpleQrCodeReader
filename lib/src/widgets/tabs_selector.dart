import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:qr_reader/src/models/home_tabs.dart';
import 'package:qr_reader/src/utils/app_keys.dart';

class TabSelector extends StatelessWidget {
  final HomeTab activeTab;
  final Function(HomeTab) onTabSelected;

  TabSelector({
    Key key,
    @required this.activeTab,
    @required this.onTabSelected,
  }) : super(key: key);

  //region StatelessWidget
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      key: AppKeys.tabs,
      currentIndex: HomeTab.values.indexOf(activeTab),
      onTap: (index) => onTabSelected(HomeTab.values[index]),
      items: HomeTab.values.map((tab) {
        return BottomNavigationBarItem(
          icon: Icon(
            tab == HomeTab.codes ? Icons.list : Icons.settings,
            key: _provideKey(tab),
          ),
          title: Text(
            tab == HomeTab.codes ? "Codes" : "Settings",
            key: _provideKey(tab),
          ),
        );
      }).toList(),
    );
  }

  //endregion

  //region Utility API
  Key _provideKey(HomeTab tab) {
    return tab == HomeTab.codes ? AppKeys.codesTab : AppKeys.settingsTab;
  }
//endregion
}
