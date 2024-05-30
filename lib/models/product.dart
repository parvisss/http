import 'package:json_annotation/json_annotation.dart';
part 'product.g.dart';

@JsonSerializable()
class Product {
  int id;
  String title;
  double price;

  List images;
  Product({
    required this.id,
    required this.price,
    required this.title,
    required this.images,
  });
  factory Product.fromJson(Map<String, dynamic> json) {
    return _$ProductFromJson(json);
  }
  Map<String, dynamic> toJson() {
    return _$ProductToJson(this);
  }
}
