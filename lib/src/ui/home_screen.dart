import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qr_reader/src/blocs/tab/home_tab_bloc.dart';
import 'package:qr_reader/src/blocs/tab/home_tab_event.dart';
import 'package:qr_reader/src/models/home_tabs.dart';
import 'package:qr_reader/src/ui/scanned_code_screen.dart';
import 'package:qr_reader/src/ui/settings_screen.dart';
import 'package:qr_reader/src/utils/Routes.dart';
import 'package:qr_reader/src/widgets/tabs_selector.dart';

class HomeScreen extends StatelessWidget {
  //region StatelessWidget
  @override
  Widget build(BuildContext context) {
    final tabBloc = BlocProvider.of<HomeTabBloc>(context);
    return BlocBuilder<HomeTabBloc, HomeTab>(
      builder: (context, activeTab) {
        return Scaffold(
          body: Center(
            child: activeTab == HomeTab.codes
                ? ScannedCodesScreen()
                : SettingsScreen(),
          ),
          bottomNavigationBar: TabSelector(
            activeTab: activeTab,
            onTabSelected: (tab) => tabBloc.add((HomeTabChangedEvent(tab))),
          ),
          floatingActionButton: FloatingActionButton.extended(
            onPressed: () {
              Navigator.of(context).pushNamed(QrCodeReaderRoutes.scan);
            },
            icon: Icon(Icons.add),
            label: const Text("Scan"),
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
        );
      },
    );
  }
//endregion
}
