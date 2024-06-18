import 'package:hwl_flutter_code_test/data_layer/repo_model/repo_model.dart';
import 'package:hwl_flutter_code_test/data_layer/valued_objects/item_model.dart';
import 'package:hwl_flutter_code_test/network_layer/api_service/result.dart';
import 'package:hwl_flutter_code_test/network_layer/data_agent/dio_data_agent.dart';
import 'package:hwl_flutter_code_test/network_layer/data_agent/dio_data_agent_impl.dart';

class RepoModelImpl extends RepoModel {
  RepoModelImpl._internal();

  static final RepoModelImpl _singleton = RepoModelImpl._internal();

  factory RepoModelImpl() => _singleton;

  DioDataAgent _dioDataAgent = DioDataAgentImpl();

  @override
  Future<Result<List<ItemModel>>> getItemList() {
    return _dioDataAgent.getItemList();
  }

  @override
  void setService(DioDataAgent apiService) {
    _dioDataAgent = apiService;
  }
}
