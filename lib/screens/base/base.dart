import 'package:ecommerce_app_bloc/bloc/all_products/all_product_bloc.dart';
import 'package:ecommerce_app_bloc/repositories/all_products_repo/all_products_actions.dart';
import 'package:ecommerce_app_bloc/screens/All_products/all_products.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BaseApp extends StatefulWidget {
  const BaseApp({Key? key}) : super(key: key);

  @override
  State<BaseApp> createState() => _BaseAppState();
}

class _BaseAppState extends State<BaseApp> {
  @override
  Widget build(BuildContext context) {
    final allProductAction = AllProductActions();

    return MultiRepositoryProvider(
      providers: [
        // Add your BlocProviders or CubitProviders here
        // Example:
        // BlocProvider(create: (context) => YourBloc()),
        RepositoryProvider(create: (_)=>allProductAction)
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider(create: (_)=>All_productBloc(productActions: allProductAction))
        ],
        child: AllProducts(),
      ),
    );
  }
}

