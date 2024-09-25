

import '../../model/product/product.dart';

abstract class AllProductRepository{
  Future<List<Product>> fecthAllProduct();
}