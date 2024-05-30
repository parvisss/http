import 'package:json_annotation/json_annotation.dart';
part 'categorie.g.dart';

@JsonSerializable()
class Categorie {
  int id;
  String image;
  String name;
  Categorie({required this.id, required this.name, required this.image});

  factory Categorie.fromJson(Map<String, dynamic> json) {
    return _$CategorieFromJson(json);
  }
  Map<String, dynamic> toJson() {
    return _$CategorieToJson(this);
  }
}
