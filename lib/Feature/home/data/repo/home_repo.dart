import 'package:dartz/dartz.dart';
import 'package:e_book_app/core/errors/fauiler.dart';
import 'package:e_book_app/Feature/home/data/models/book_model/book_model.dart';

abstract class HomeRepo{
  Future<Either<Fauilar,List<BookModel>>>   fetchNewestBooks ();
  Future<Either<Fauilar,List<BookModel>>>   fetchFeaturedBooks ();
}