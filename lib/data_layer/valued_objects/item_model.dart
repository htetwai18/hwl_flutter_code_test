import 'package:hive/hive.dart';
import 'package:hwl_flutter_code_test/persistence_layer/hive_constants/hive_constants.dart';
part 'item_model.g.dart';

@HiveType(typeId: HiveConstants.hiveTypeId, adapterName: "ItemModelAdapter")
class ItemModel {
  @HiveField(0)
  int? id;

  @HiveField(1)
  int? pid;

  @HiveField(2)
  String? product;

  @HiveField(3)
  int? productType;

  @HiveField(4)
  String? sellPrice;

  @HiveField(5)
  String? buyPrice;

  @HiveField(6)
  String? mDate;

  @HiveField(7)
  String? mTime;

  ItemModel(
      {this.id,
      this.pid,
      this.product,
      this.productType,
      this.sellPrice,
      this.buyPrice,
      this.mDate,
      this.mTime});

  ItemModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    pid = json['pid'];
    product = json['product'];
    productType = json['product_type'];
    sellPrice = json['sell_price'];
    buyPrice = json['buy_price'];
    mDate = json['mdate'];
    mTime = json['mtime'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['id'] = id;
    data['pid'] = pid;
    data['product'] = product;
    data['product_type'] = productType;
    data['sell_price'] = sellPrice;
    data['buy_price'] = buyPrice;
    data['mdate'] = mDate;
    data['mtime'] = mTime;
    return data;
  }

  static List<ItemModel> listFromJson(List<dynamic> json) {
    return json.map((e) => ItemModel.fromJson(e)).toList();
  }

  static List<Map<String, dynamic>> listToJson(List<ItemModel> items) {
    return items.map((e) => e.toJson()).toList();
  }

  @override
  String toString() {
    return 'ItemModel{id: $id, pid: $pid, product: $product, productType: $productType, sellPrice: $sellPrice, buyPrice: $buyPrice, mDate: $mDate, mTime: $mTime}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ItemModel &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          pid == other.pid &&
          product == other.product &&
          productType == other.productType &&
          sellPrice == other.sellPrice &&
          buyPrice == other.buyPrice &&
          mDate == other.mDate &&
          mTime == other.mTime;

  @override
  int get hashCode =>
      id.hashCode ^
      pid.hashCode ^
      product.hashCode ^
      productType.hashCode ^
      sellPrice.hashCode ^
      buyPrice.hashCode ^
      mDate.hashCode ^
      mTime.hashCode;
}
