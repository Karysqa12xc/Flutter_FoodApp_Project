import 'package:json_annotation/json_annotation.dart';
part 'item_food.g.dart';
@JsonSerializable()
class ItemFood {
  final String idRestaurant;
  final String imagePathFood;
  final String nameFood;
  final String cost;
  ItemFood({
    required this.idRestaurant,
    required this.imagePathFood,
    required this.nameFood,
    required this.cost,
  });
  factory ItemFood.fromJson(Map<String, dynamic> json) =>
      _$ItemFoodFromJson(json);
  Map<String, dynamic> toJson() => _$ItemFoodToJson(this);
}
