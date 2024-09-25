// import 'dart:convert';
//
// import 'package:ecommerce_app_bloc/entities/product/product_entity.dart';
// import 'package:ecommerce_app_bloc/model/product/product.dart';
//
// import 'all_products_repositories.dart';
// import 'package:http/http.dart' as http;
//
// class AllProductActions extends AllProductRepository{
//   @override
//   Future<List<Product>> fecthAllProduct() async{
//     final response = await http.get(Uri.parse('https://fakestoreapi.com/products'));
//
//     print(response.statusCode);
//     if(response.statusCode == 200){
//       final json = jsonDecode(response.body);
//       return json.map<Product>(
//           (e)=> Product.fromEntity(ProductEntity.fromJson(e)));
//
//     }
//    return [];
//   }
//
// }
import 'dart:convert';
import 'package:ecommerce_app_bloc/entities/product/product_entity.dart';
import 'package:ecommerce_app_bloc/model/product/product.dart';
import 'all_products_repositories.dart';
import 'package:http/http.dart' as http;

class AllProductActions extends AllProductRepository {
  @override
  Future<List<Product>> fecthAllProduct() async {
    final response = await http.get(Uri.parse('https://fakestoreapi.com/products'));

    print(response.statusCode);
    if (response.statusCode == 200) {
      final json = jsonDecode(response.body) as List; // Ensure it's a list
      return json.map<Product>((e) => Product.fromEntity(ProductEntity.fromJson(e))).toList(); // Convert to List<Product>
    }
    return [];
  }
}
