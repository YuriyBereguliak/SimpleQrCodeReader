import 'package:equatable/equatable.dart';
import 'package:qr_reader/src/models/home_tabs.dart';

abstract class HomeTabEvent extends Equatable {
  const HomeTabEvent();
}

class HomeTabChangedEvent extends HomeTabEvent {
  final HomeTab tab;

  HomeTabChangedEvent(this.tab);

  @override
  List<Object> get props => [tab];

  @override
  String toString() => 'ChangeTab { tab: $tab }';
}
