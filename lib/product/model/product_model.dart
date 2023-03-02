import 'package:actual_two/common/model/model_with_id.dart';
import 'package:actual_two/common/utils/data_utils.dart';
import 'package:actual_two/restaurant/model/restaurant_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'product_model.g.dart';

@JsonSerializable()
class ProductModel implements IModelWithId {
  final String id;
  final String name;
  @JsonKey(
    fromJson: DataUtils.pathToUrl,
  )
  final String imgUrl;
  final String detail;
  final int price;
  final RestaurantModel restaurant;

  ProductModel({
    required this.id,
    required this.name,
    required this.imgUrl,
    required this.detail,
    required this.price,
    required this.restaurant,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json)
  => _$ProductModelFromJson(json);
}
