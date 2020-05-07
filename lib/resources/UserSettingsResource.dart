import 'package:qr_reader/resources/local/UserSettingsLocalApi.dart';
import 'package:qr_reader/resources/local/UserSettingsLocalApiImpl.dart';

class UserSettingsResource {
  final UserSettingsLocalApi _localApi = UserSettingsLocalApiImpl();


  Future<bool> isStartAppFromScanner() => _localApi.isStartFromScanner();
}