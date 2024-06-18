import 'package:flutter/cupertino.dart';
import 'package:hwl_flutter_code_test/data_layer/repo_model/repo_model.dart';
import 'package:hwl_flutter_code_test/data_layer/repo_model/repo_model_impl.dart';
import 'package:hwl_flutter_code_test/data_layer/valued_objects/item_model.dart';
import 'package:hwl_flutter_code_test/persistence_layer/dao/item_dao.dart';
import 'package:stream_transform/stream_transform.dart';

class HomeProvider extends ChangeNotifier with ItemDao {
  /// Bloc state
  bool isDisposed = false;

  /// Dependencies
  final RepoModel _repoModel = RepoModelImpl();

  /// App Cycle State
  bool isLoading = false;
  bool isNetworkSuccess = false;

  /// Screen states
  List<ItemModel>? itemList;
  String? errorCode, errorMessage;

  HomeProvider() {
    _loading();
    _getItemsFromLocalData().listen((data) {
      itemList = data;
      _notifySafely();
    }).onError((e, st) {});
  }

  Future _fetchAndSaveItems() async {
    var result = await _repoModel.getItemList();
    if (result.success) {
      saveAllItems(result.data);
      return Future.value();
    } else {
      errorCode = result.errorCode;
      errorMessage = result.errorMessage;
      _notifySafely();
      return Future.error("error");
    }
  }

  /// integrate with local database
  Stream<List<ItemModel>?> _getItemsFromLocalData() {
    _fetchAndSaveItems()
        .then((v) => _networkSuccess())
        .onError((e, st) => _networkFail());
    return watchItemsEventStream()
        .startWith(getAllItemStream())
        .map((event) => getAllItems());
  }

  /// Network situations
  void _loading() {
    isLoading = true;
    isNetworkSuccess = false;
    _notifySafely();
  }

  void _networkSuccess() {
    isLoading = false;
    isNetworkSuccess = true;
    _notifySafely();
  }

  void _networkFail() {
    isLoading = false;
    isNetworkSuccess = false;
    _notifySafely();
  }

  void _notifySafely() {
    if (!isDisposed) {
      notifyListeners();
    }
  }

  @override
  void dispose() {
    super.dispose();
    isDisposed = true;
  }
}
