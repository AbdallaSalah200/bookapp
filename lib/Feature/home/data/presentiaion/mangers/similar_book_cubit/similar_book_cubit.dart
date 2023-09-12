import 'package:bloc/bloc.dart';
import '../../../repo/home_repo.dart';
import 'package:equatable/equatable.dart';
import 'package:e_book_app/Feature/home/data/models/book_model/book_model.dart';


part 'similar_book_state.dart';

class SimilarBookCubit extends Cubit<SimilarBookState> {
  SimilarBookCubit(this.homeRepo) : super(SimilarBookInitial());
   final HomeRepo homeRepo ;
  Future <void> fetchSimilarBooks ({required String category}) async {
    emit(SimilarBooksLoading());
    var result = await homeRepo.fetchSimilarBooks(category: category);
    result.fold((fauiler) {
      emit(SimilarBooksFailure(fauiler.errmessage));
    }, (books) {
      emit(SimilarBooksSuccess(books));
    });
  }
}

