import 'package:actual_two/common/model/model_with_id.dart';
import 'package:actual_two/common/utils/data_utils.dart';
import 'package:actual_two/restaurant/model/restaurant_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'order_model.g.dart';

@JsonSerializable()
class OrderProductModel {
  final String id;
  final String name;
  final String detail;
  @JsonKey(
    fromJson: DataUtils.pathToUrl,
  )
  final String imgUrl;
  final int price;

  OrderProductModel({
    required this.id,
    required this.name,
    required this.detail,
    required this.imgUrl,
    required this.price,
  });

  factory OrderProductModel.fromJson(Map<String, dynamic> json) =>
      _$OrderProductModelFromJson(json);
}

@JsonSerializable()
class OrderProductWithCountModel {
  final OrderProductModel product;
  final int count;

  OrderProductWithCountModel({
    required this.product,
    required this.count,
  });

  factory OrderProductWithCountModel.fromJson(Map<String, dynamic> json)
  => _$OrderProductWithCountModelFromJson(json);
}

@JsonSerializable()
class OrderModel implements IModelWithId {
  final String id;
  final RestaurantModel restaurant;
  final List<OrderProductWithCountModel> products;
  final int totalPrice;
  @JsonKey(
    fromJson: DataUtils.StringToDateTime,
  )
  final DateTime createdAt;

  OrderModel({
    required this.id,
    required this.restaurant,
    required this.products,
    required this.totalPrice,
    required this.createdAt,
  });
  
  factory OrderModel.fromJson(Map<String, dynamic> json)
  => _$OrderModelFromJson(json);
}