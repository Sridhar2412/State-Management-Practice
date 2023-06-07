import '../../data/model/user_model.dart';

abstract class ProductRepo {
  Future<ListProduct> getProducts();
  Future<Product> getProductById(int id);
}
