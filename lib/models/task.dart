
import 'package:freezed_annotation/freezed_annotation.dart';

part 'task.freezed.dart';
//part creates a generated file
// .g.dart creates a 
part 'task.g.dart';


@freezed 
abstract class ListProduct with _$ListProduct{
  factory ListProduct({
      @Default(<Product>[]) List<Product> products,
  })=_ListProduct;
  factory ListProduct.fromJson(Map<String, dynamic> json) => _$ListProductFromJson(json);
}


@freezed 
abstract class Product with _$Product{
  factory Product({
    @Default(0) int id,
    @Default('') String title,
    @Default('') String description,
    @Default(0) int price ,
    @Default(0.0) double discountPrice,
    @Default(0.0) double rating,
    @Default(0) int stock,
    @Default('') String category,
    @Default('') String thumbnails,
    @Default([""]) List<String> images,
  }) =_Product;
  
  factory Product.fromJson(Map<String, dynamic> json) => _$ProductFromJson(json);
}

