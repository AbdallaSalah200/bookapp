import 'package:dio/dio.dart';
import 'package:dartz/dartz.dart';
import 'package:e_book_app/core/errors/fauiler.dart';
import 'package:e_book_app/core/utils/api_service.dart';
import 'package:e_book_app/Feature/home/data/repo/home_repo.dart';
import 'package:e_book_app/Feature/home/data/models/book_model/book_model.dart';




class HomeRepoImpl implements HomeRepo {
  final ApiServices apiServices ;

  HomeRepoImpl(this.apiServices);
  @override
  Future<Either<Fauilar, List<BookModel>>> fetchNewestBooks() async{
    try {
  var data =    await  apiServices.get(endpoint: 'volumes?Filtering=free-ebooks&Sorting=newest &q=subject:computer science');
  List<BookModel>books =[];
  for (var item in data['items']) {
    books.add(BookModel.fromJson(item));
  }
  return right(books);
}  catch (e) {
  if (e is DioException) {
    return left(ServerFauiler.fromDioException(e));
  }
 return left(ServerFauiler(e.toString()));
 
 
}
    
  }

  @override
  Future<Either<Fauilar, List<BookModel>>> fetchFeaturedBooks() async {
    
    try {
  var data =    await  apiServices.get(endpoint: 'volumes?Filtering=free-ebooks&q=subject:Programming');
  List<BookModel>books =[];
  for (var item in data['items']) {
    try {
  books.add(BookModel.fromJson(item));
}  catch (e) {
  
          books.add(BookModel.fromJson(item));
       
}
  }
  return right(books);
}  catch (e) {
  if (e is DioException) {
    return left(ServerFauiler.fromDioException(e));
  }
 return left(ServerFauiler(e.toString()));
 
 
}
  }
  
  @override
  Future<Either<Fauilar, List<BookModel>>> fetchSimilarBooks({required String category}) async{
    try {
  var data =    await  apiServices.get(endpoint: 'volumes?Filtering=free-ebooks&Sorting=relevance&q=subject:Programming');
  List<BookModel>books =[];
  for (var item in data['items']) {
    try {
  books.add(BookModel.fromJson(item));
}  catch (e) {
  
          books.add(BookModel.fromJson(item));
       
}
  }
  return right(books);
}  catch (e) {
  if (e is DioException) {
    return left(ServerFauiler.fromDioException(e));
  }
 return left(ServerFauiler(e.toString()));
 
 
}
  }

}