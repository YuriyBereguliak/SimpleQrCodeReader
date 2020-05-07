import 'local/UserSettingsLocalApi.dart';
import 'local/UserSettingsLocalApiImpl.dart';

class UserSettingsResource {
  final UserSettingsLocalApi _localApi = UserSettingsLocalApiImpl();

  Future<bool> isStartAppFromScanner() => _localApi.isStartFromScanner();
}
