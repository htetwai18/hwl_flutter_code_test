import 'package:dio/dio.dart';
import 'package:hwl_flutter_code_test/data_layer/valued_objects/item_model.dart';
import 'package:hwl_flutter_code_test/network_layer/api_service/api_constants.dart';
import 'package:hwl_flutter_code_test/network_layer/api_service/api_service.dart';
import 'package:hwl_flutter_code_test/network_layer/api_service/result.dart';
import 'package:hwl_flutter_code_test/network_layer/data_agent/dio_data_agent.dart';

class DioDataAgentImpl extends DioDataAgent {
  DioDataAgentImpl._internal();
  static final DioDataAgentImpl _singleton = DioDataAgentImpl._internal();
  factory DioDataAgentImpl() => _singleton;

  @override
  Future<Result<List<ItemModel>>> getItemList() async {
    var dio = DioUtil.getDio(null);
    try {
      final response =
          await dio.get("${ApiConstants.baseUrl}${ApiConstants.apiKey}");
      if (response.statusCode == 200) {
        var data = response.data as List;
        var items =
            data.map<ItemModel>((json) => ItemModel.fromJson(json)).toList();
        return Result.success(data: items);
      }
      return Result.error('Failed to load response',
          errorCode: response.statusCode.toString());
    } on DioException catch (e) {
      return Result.error(e.message,
          errorCode: e.response?.statusCode.toString());
    } catch (e) {
      return Result.error(e.toString());
    }
  }
}
