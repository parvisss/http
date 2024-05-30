// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'categorie.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Categorie _$CategorieFromJson(Map<String, dynamic> json) => Categorie(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      image: json['image'] as String,
    );

Map<String, dynamic> _$CategorieToJson(Categorie instance) => <String, dynamic>{
      'id': instance.id,
      'image': instance.image,
      'name': instance.name,
    };
