import 'package:dio/dio.dart';

class ApiServices {
  final Dio  dio ;
  final _baseurl= 'https://www.googleapis.com/books/v1/';
  ApiServices( this.dio);
  Future<Map<String,dynamic>> get ({required String endpoint })async{
     var response=  await Dio().get('$_baseurl$endpoint');
     return response.data ;
  }
}