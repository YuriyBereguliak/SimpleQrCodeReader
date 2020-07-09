import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qr_reader/src/models/home_tabs.dart';

import 'home_tab_event.dart';

class HomeTabBloc extends Bloc<HomeTabEvent, HomeTab> {
  //region Bloc
  @override
  HomeTab get initialState => HomeTab.codes;

  @override
  Stream<HomeTab> mapEventToState(HomeTabEvent event) async* {
    if (event is HomeTabChangedEvent) {
      yield event.tab;
    }
  }
//endregion
}
