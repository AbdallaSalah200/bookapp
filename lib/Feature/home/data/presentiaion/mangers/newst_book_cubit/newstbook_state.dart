part of 'newstbook_cubit.dart';

sealed class NewstbookState extends Equatable {
  const NewstbookState();

  @override
  List<Object> get props => [];
}

final class NewstbookInitial extends NewstbookState {}
final class NewstbookLoading  extends NewstbookState {}
final class NewstbookFauilar extends NewstbookState {
  final String errmessage;


 const   NewstbookFauilar(this.errmessage);}
final class NewstbookSuccess extends NewstbookState {
  final List <BookModel> book ;

 const   NewstbookSuccess(this.book);
  
}
