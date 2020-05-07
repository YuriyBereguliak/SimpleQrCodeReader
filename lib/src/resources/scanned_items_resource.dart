import 'package:qr_reader/src/resources/local/scan/ScannedItemsLocalApi.dart';
import 'package:qr_reader/src/resources/local/scan/ScannedItemsLocalApiImpl.dart';


class ScannedItemsRepository {
  final ScannedItemsLocalApi _localRepository = ScannedItemsLocalApiImpl();
  
  Future<List<String>> loadScannedItems() => _localRepository.fetchScannedItems();
}
