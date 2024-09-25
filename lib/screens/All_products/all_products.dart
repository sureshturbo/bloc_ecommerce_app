// import 'package:ecommerce_app_bloc/bloc/all_products/all_product_bloc.dart';
// import 'package:ecommerce_app_bloc/bloc/all_products/all_product_event.dart';
// import 'package:ecommerce_app_bloc/bloc/all_products/all_product_state.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
//
// class All_products extends StatefulWidget {
//   const All_products({Key? key}) : super(key: key);
//
//   @override
//   State<All_products> createState() => _All_productsState();
// }
//
// class _All_productsState extends State<All_products> {
//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     final bloc = BlocProvider.of<All_productBloc>(context);
//     bloc.add(FetchAllProducts());
//   }
//   @override
//   Widget build(BuildContext context) {
//     return BlocBuilder<All_productBloc, All_productState>(builder: (context,state){
//       return state.loading? CircularProgressIndicator():  Text(state.all_products![1].product_tittle);
//     });
//   }
// }

import 'package:ecommerce_app_bloc/bloc/all_products/all_product_bloc.dart';
import 'package:ecommerce_app_bloc/bloc/all_products/all_product_event.dart';
import 'package:ecommerce_app_bloc/bloc/all_products/all_product_state.dart';
import 'package:ecommerce_app_bloc/model/product/product.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../widgets/single_product.dart';

class AllProducts extends StatefulWidget {
  const AllProducts({Key? key}) : super(key: key);

  @override
  State<AllProducts> createState() => _AllProductsState();
}

class _AllProductsState extends State<AllProducts> {
  @override
  void initState() {
    super.initState();
    final bloc = BlocProvider.of<All_productBloc>(context);
    bloc.add(FetchAllProducts());
  }

  Widget getbody(List<Product> products){

    return ListView.builder(
      itemCount: products.length,
        itemBuilder: (BuildContext contex, index){
        return Single_product(product: products[index],);
    });
  }

  ///first check
  // @override
  // Widget build(BuildContext context) {
  //   return BlocBuilder<All_productBloc, All_productState>(
  //     builder: (context, state) {
  //       if (state.loading) {
  //         return const Center(child: CircularProgressIndicator());
  //       } else if (state.all_products == null || state.all_products!.isEmpty) {
  //         return const Center(child: Text('No products available'));
  //       } else {
  //         return Center(
  //           child: Text(state.all_products![0].product_tittle),
  //         );
  //       }
  //     },
  //   );
  // }
  ///
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<All_productBloc, All_productState>(
      builder: (context, state) {
        if (state.loading) {
          return const Center(child: CircularProgressIndicator());
        } else if (state.all_products == null || state.all_products!.isEmpty) {
          return const Center(child: Text('No products available'));
        } else {
          return Scaffold(
            appBar: AppBar(title: Text('E-commerce App'),),
            body:getbody(state.all_products!)
            //Single_product(product: state.all_products![0],),
          );
        }
      },
    );
  }
///
}
