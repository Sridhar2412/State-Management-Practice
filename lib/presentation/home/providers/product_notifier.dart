import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:structure/domain/repository/product_repo.dart';

import '../../../data/model/user_model.dart';
import '../../../data/repository/product.dart';

part 'product_notifier.g.dart';

@riverpod
class ProductNotifier extends _$ProductNotifier {
  late ProductRepo repo;

  @override
  ListProduct build() {
    repo = ref.read(productRepoProvider);
    return ListProduct();
  }

  Future<void> getProduct() async {
    final prod = await repo.getProducts();
    state = prod;
    // final res = await repo.getProductById(1);
    // log(res.toString());
  }
}

@riverpod
class ProductNotifiers extends _$ProductNotifiers {
  late ProductRepo repo;

  @override
  Product build() {
    repo = ref.read(productRepoProvider);
    return Product();
  }

  Future<void> getProductById() async {
    final prod = await repo.getProductById(1);
    state = prod;
  }
}
