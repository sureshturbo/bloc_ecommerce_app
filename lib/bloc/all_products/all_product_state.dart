import 'package:equatable/equatable.dart';

import '../../model/product/product.dart';

class All_productState extends Equatable{

  final List<Product>? all_products;
  final bool loading;

  const All_productState({this.all_products,this.loading= false});

  All_productState copywith({List<Product>? allproduct,bool? loading}){
      return All_productState(
        all_products: allproduct ?? this.all_products,
        loading: loading ?? this.loading
      );
  }
  @override
  List<Object?> get props => [all_products,loading];

}