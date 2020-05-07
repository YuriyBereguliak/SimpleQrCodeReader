import 'package:qr_reader/src/resources/local/scan/ScannedItemsLocalApi.dart';

class ScannedItemsLocalApiImpl implements ScannedItemsLocalApi {
  final List<String> _items = [
    "123654",
    "215964",
    "33574656",
    "4646849",
    "5354354",
    "61651651",
    "73536543",
    "8654654",
    "93354365466",
    "1066454654654658"
  ];

  @override
  Future<List<String>> fetchScannedItems() {
    return Future.value(_items);
  }
}
