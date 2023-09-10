import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:e_book_app/Feature/home/data/repo/home_repo.dart';
import 'package:e_book_app/Feature/home/data/models/book_model/book_model.dart';

part 'feture_book_state.dart';

class FetureBookCubit extends Cubit<FetureBookState> {
  FetureBookCubit(this.homeRepo) : super(FetureBookInitial());
  final HomeRepo homeRepo ;
  Future <void> fetchFeaturedBooks () async {
    emit(FetureBookLodaing());
    var result = await homeRepo.fetchFeaturedBooks();
    result.fold((fauiler) {
      emit(FetureBookFailure(fauiler.errmessage));
    }, (books) {
      emit(FetureBookSuccess(books));
    });
  }
}
