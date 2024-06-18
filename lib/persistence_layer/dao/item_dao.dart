import 'package:hive/hive.dart';
import 'package:hwl_flutter_code_test/data_layer/valued_objects/item_model.dart';
import 'package:hwl_flutter_code_test/persistence_layer/hive_constants/hive_constants.dart';

mixin ItemDao {
  void saveAllItems(List<ItemModel>? itemList) async {
    Map<int?, ItemModel> itemMap = {
      for (var item in itemList ?? []) item.id: item
    };
    await getItemBox().putAll(itemMap);
  }

  List<ItemModel>? getAllItems() {
    return getItemBox().values.toList();
  }

  /// Reactive
  Stream<void> watchItemsEventStream() {
    return getItemBox().watch();
  }

  Stream<List<ItemModel>?> getAllItemStream() {
    return Stream.value(getAllItems());
  }

  /// Box
  Box<ItemModel> getItemBox() {
    return Hive.box<ItemModel>(HiveConstants.boxNameItemModel);
  }
}
