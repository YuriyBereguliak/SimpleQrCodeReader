abstract class UserSettingsLocalApi {
  // This method save value into local storage.
  Future<void> saveIsStartFromScanner(bool isStartFromScanner);

  // This method read value from local storage.
  Future<bool> isStartFromScanner();
}
