import 'package:ecommerce_app_bloc/bloc/all_products/all_product_event.dart';
import 'package:ecommerce_app_bloc/bloc/all_products/all_product_state.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';

import '../../repositories/all_products_repo/all_products_actions.dart';


class All_productBloc extends Bloc<All_productsEvent,All_productState>{
   final AllProductActions productActions;
  All_productBloc({required this.productActions}) : super(All_productState()){
      on<FetchAllProducts>(
            //  (event, emit)=> _fetchProducts
          _fetchProducts
      );
  }
   Future _fetchProducts(FetchAllProducts event,Emitter<All_productState> emit) async{
     emit(state.copywith(loading: true));
     final allProducts = await productActions.fecthAllProduct();
     emit(state.copywith(loading: false,allproduct: allProducts));
   }
}

