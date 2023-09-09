import 'package:dartz/dartz.dart';
import 'package:e_book_app/core/errors/fauiler.dart';
import 'package:e_book_app/Feature/home/data/repo/home_repo.dart';
import 'package:e_book_app/Feature/home/data/models/book_model/book_model.dart';




class HomeRepoImpl implements HomeRepo {
  @override
  Future<Either<Fauilar, List<BookModel>>> fetchBestSellerBooks() {
  
    throw UnimplementedError();
  }

  @override
  Future<Either<Fauilar, List<BookModel>>> fetchFeaturedBooks() {
    
    throw UnimplementedError();
  }

}