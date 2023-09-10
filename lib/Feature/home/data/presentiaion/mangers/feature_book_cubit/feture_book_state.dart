part of 'feture_book_cubit.dart';

sealed class FetureBookState extends Equatable {
  const FetureBookState();

  @override
  List<Object> get props => [];
}

final class FetureBookInitial extends FetureBookState {}
final class FetureBookLodaing extends FetureBookState {}
final class FetureBookFailure extends FetureBookState {
  final String errmessage ;


  const  FetureBookFailure(this.errmessage);}
final class FetureBookSuccess extends FetureBookState {
  final List<BookModel> books ;

  const  FetureBookSuccess(this.books); 
}
