import 'package:hwl_flutter_code_test/data_layer/valued_objects/item_model.dart';
import 'package:hwl_flutter_code_test/network_layer/api_service/result.dart';

abstract class DioDataAgent {
  Future<Result<List<ItemModel>>> getItemList();
}
