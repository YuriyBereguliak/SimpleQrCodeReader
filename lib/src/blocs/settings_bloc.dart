import 'package:qr_reader/src/resources/UserSettingsResource.dart';
import 'package:rxdart/rxdart.dart';

class SettingsBloc {
  final _settingsResource = UserSettingsResource();

  final _startSettingsFetcher = PublishSubject<bool>();

  Observable<bool> get startFromScannerSetting => _startSettingsFetcher.stream;

  loadStartAppSettingValue() async {
    var value = await _settingsResource.isStartAppFromScanner();
    print("Settings value :: start from :: $value");
    _startSettingsFetcher.sink.add(value);
  }

  void dispose() {
    _startSettingsFetcher.close();
  }
}
