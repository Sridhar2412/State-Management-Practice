import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:structure/data/model/user_model.dart';
import 'package:structure/data/source/product_service.dart';
import 'package:structure/domain/repository/product_repo.dart';

part 'product.g.dart';

@riverpod
ProductRepo productRepo(ProductRepoRef ref) {
  return ProductRepoImpl(ref);
}

class ProductRepoImpl implements ProductRepo {
  final Ref _ref;

  ProductRepoImpl(this._ref);
  @override
  Future<ListProduct> getProducts() {
    return _ref.read(productServiceProvider).getPosts();
  }

  @override
  Future<Product> getProductById(int id) {
    return _ref.read(productServiceProvider).getProductById(id);
  }
}
