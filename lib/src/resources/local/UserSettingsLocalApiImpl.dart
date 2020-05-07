import 'UserSettingsLocalApi.dart';

class UserSettingsLocalApiImpl implements UserSettingsLocalApi {
  @override
  Future<void> saveIsStartFromScanner(bool isStartFromScanner) {
    print("Save value :: $isStartFromScanner");
  }

  @override
  Future<bool> isStartFromScanner() {
    return Future.value(false);
  }
}
