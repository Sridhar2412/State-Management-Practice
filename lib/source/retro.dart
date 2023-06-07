import 'package:dio/dio.dart';
import 'package:new_app/json.dart';
import 'package:new_app/models/users.dart';
import 'package:retrofit/retrofit.dart';

part 'retro.g.dart';

@RestApi()
abstract class Apiservices {
  factory Apiservices(Dio dio, {String baseUrl}) = _Apiservices;

  @POST("/users/add")
  Future<User> addIUser(@Body() User user);
  @GET("/users")
  Future<ListUsers> getUser();

  // @POST("/products/add")
  // Future<Product> addProduct(@Body() Product product);
  // @GET("/users")
  // Future<ListUsers> getPosts();
}
