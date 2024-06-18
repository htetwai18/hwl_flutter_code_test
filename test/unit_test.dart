import 'package:flutter_test/flutter_test.dart';
import 'package:hwl_flutter_code_test/data_layer/repo_model/repo_model.dart';
import 'package:hwl_flutter_code_test/data_layer/repo_model/repo_model_impl.dart';
import 'package:hwl_flutter_code_test/data_layer/valued_objects/item_model.dart';
import 'package:hwl_flutter_code_test/network_layer/api_service/result.dart';
import 'matcher_data.dart';
import 'mock_dio_data_agent.dart';

void main() {
  late RepoModel repo;

  setUp(() {
    repo = RepoModelImpl();
    repo.setService(MockDioDataAgent());
  });

  test("Checking mock server's result status", () async {
    Result<List<ItemModel>> result = await repo.getItemList();
    var success = result.success;
    expect(success, equals(true));
  });

  test("Comparing mock server data and matcher data", () async {
    Result<List<ItemModel>> result = await repo.getItemList();
    var expectedData = result.data as List<ItemModel>;
    expect(expectedData, equals(itemListMatcher()));
  });
}
