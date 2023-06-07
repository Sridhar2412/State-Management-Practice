import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../model/user_model.dart';

part 'product_service.g.dart';

@riverpod
ProductService productService(ProductServiceRef ref) {
  return ProductService(Dio());
}

@RestApi(baseUrl: 'https://dummyjson.com/')
abstract class ProductService {
  factory ProductService(Dio dio) = _ProductService;

  @GET("/product")
  Future<ListProduct> getPosts();

  @GET("/product/{id}")
  Future<Product> getProductById(@Path("id") int prodcutId);
}
