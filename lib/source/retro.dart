import 'package:dio/dio.dart';
import 'package:new_app/models/task.dart';
import 'package:new_app/models/users.dart';
import 'package:retrofit/retrofit.dart';

part 'retro.g.dart';

@RestApi()
abstract class RestClient{
factory RestClient(Dio dio, {String baseUrl})= _RestClient; 

@POST("/products/add")
Future<Product> addProduct(@Body() Product product);
  @GET("/users") 
  Future<ListUsers> getPosts();


}