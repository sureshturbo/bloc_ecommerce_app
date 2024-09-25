import 'package:ecommerce_app_bloc/entities/product/product_entity.dart';
import 'package:equatable/equatable.dart';

import '../rating/rating.dart';

class Product extends Equatable{

  final int productId;

  final String product_tittle;

  double product_price;

  final String product_desc;

  final String product_cat;

  String image;
  final Rating rating;

  Product({required this.product_price,
    required this.product_desc,required this.product_tittle,
    required this.image,required this.productId,required this.rating
    ,required this.product_cat});

  static Product fromEntity(ProductEntity productEntity){
    return Product(product_price:productEntity.product_price,
        product_desc: productEntity.product_desc,
        product_tittle: productEntity.product_tittle,
        image: productEntity.image,
        productId: productEntity.productId,
        rating: productEntity.rating,
        product_cat: productEntity.product_cat);
  }

  ProductEntity toEntity(){
    return ProductEntity(rating, image: image, product_cat: product_cat, product_desc: product_desc, product_price: product_price, product_tittle: product_tittle, productId: productId);
  }
  @override
  // TODO: implement props
  List<Object?> get props => [product_cat,productId,product_tittle,product_desc,product_price];

}