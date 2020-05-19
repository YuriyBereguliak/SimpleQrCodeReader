import 'package:qr_reader/src/resources/scanned_items_resource.dart';
import 'package:rxdart/rxdart.dart';

class ScannedItemsBloc {
  final _repository = ScannedItemsRepository();
  final _scannedItemsFetcher = PublishSubject<List<String>>();

  Stream<List<String>> get scannedItemsStream => _scannedItemsFetcher.stream;

  loadScannedItems() async {
    var items = await _repository.loadScannedItems();
    _scannedItemsFetcher.sink.add(items);
  }

  dispose() {
    _scannedItemsFetcher.close();
  }
}
