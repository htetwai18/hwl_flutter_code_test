import 'dart:convert';

import 'package:hwl_flutter_code_test/data_layer/valued_objects/item_model.dart';
import 'package:hwl_flutter_code_test/network_layer/api_service/result.dart';
import 'package:hwl_flutter_code_test/network_layer/data_agent/dio_data_agent.dart';

import 'mock_api_service.dart';

class MockDioDataAgent extends DioDataAgent {
  @override
  Future<Result<List<ItemModel>>> getItemList() async {
    try {
      final response = await MockApiService().getMockItems();
      if (response != null) {
        var items = ItemModel.listFromJson(json.decode(response));
        return Result.success(data: items);
      }
      return Result.error("Fail to Load Mock data");
    } catch (e) {
      return Result.error(e.toString());
    }
  }
}
