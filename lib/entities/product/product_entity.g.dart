// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductEntity _$ProductEntityFromJson(Map<String, dynamic> json) =>
    ProductEntity(
      fromJson(json['rating']),
      image: json['image'] as String,
      product_cat: json['category'] as String,
      product_desc: json['description'] as String,
      product_price: (json['price'] as num).toDouble(),
      product_tittle: json['title'] as String,
      productId: (json['id'] as num).toInt(),
    );

Map<String, dynamic> _$ProductEntityToJson(ProductEntity instance) =>
    <String, dynamic>{
      'id': instance.productId,
      'title': instance.product_tittle,
      'price': instance.product_price,
      'description': instance.product_desc,
      'category': instance.product_cat,
      'image': instance.image,
      'rating': toRatingJson(instance.rating),
    };
