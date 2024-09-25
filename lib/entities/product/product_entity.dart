import 'package:ecommerce_app_bloc/entities/rating/rating_entity.dart';
import 'package:ecommerce_app_bloc/model/rating/rating.dart';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part'product_entity.g.dart';

Rating fromJson(json){
      final RatingEntity ratingEntity = RatingEntity.fromJson(json);
      final Rating rating = Rating.fromEntity(ratingEntity);
      return rating;
}

Map<String, dynamic>? toRatingJson(Rating rating){
  return rating.toEntity().toJson();
}


@JsonSerializable(explicitToJson: true)
class ProductEntity extends Equatable{
  @JsonKey(name:'id')
  final int productId;
  @JsonKey(name:'title')
  final String product_tittle;
  @JsonKey(name: 'price')
  double product_price;
  @JsonKey(name: 'description')
  final String product_desc;
  @JsonKey(name: 'category')
  final String product_cat;
  @JsonKey(name: 'image')
  String image;
  @JsonKey(name: 'rating',fromJson: fromJson,toJson: toRatingJson)
  final Rating rating;

  ProductEntity(this.rating,
      {required this.image,required this.product_cat,
        required this.product_desc,required this.product_price,
        required this.product_tittle,required this.productId}
      );
  @override
  // TODO: implement props
  List<Object?> get props => [productId,image,product_tittle,product_desc,product_price];

  factory ProductEntity.fromJson(Map<String, Object?> json)=> _$ProductEntityFromJson(json);

  Map<String, dynamic> toJson()=> _$ProductEntityToJson(this);

}