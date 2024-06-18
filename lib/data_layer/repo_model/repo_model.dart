import 'package:hwl_flutter_code_test/data_layer/valued_objects/item_model.dart';
import 'package:hwl_flutter_code_test/network_layer/api_service/result.dart';
import 'package:hwl_flutter_code_test/network_layer/data_agent/dio_data_agent.dart';

abstract class RepoModel {
  void setService(DioDataAgent apiService);
  Future<Result<List<ItemModel>>> getItemList();
}
