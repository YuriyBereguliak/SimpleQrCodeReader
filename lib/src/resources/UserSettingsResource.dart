import 'local/settings/UserSettingsLocalApiImpl.dart';
import 'local/settings/UserSettingsLocalApi.dart';

class UserSettingsResource {
  final UserSettingsLocalApi _localApi = UserSettingsLocalApiImpl();

  Future<bool> isStartAppFromScanner() => _localApi.isStartFromScanner();
}
