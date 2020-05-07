import 'UserSettingsLocalApi.dart';

class UserSettingsLocalApiImpl implements UserSettingsLocalApi {
  @override
  Future<void> saveIsStartFromScanner(bool isStartFromScanner) async {
    print("Save value :: $isStartFromScanner");
  }

  @override
  Future<bool> isStartFromScanner() async {
    return Future.value(false);
  }
}
