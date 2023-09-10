import 'package:bloc/bloc.dart';
import '../../../repo/home_repo.dart';
import 'package:equatable/equatable.dart';
import '../../../models/book_model/book_model.dart';


part 'newstbook_state.dart';

class NewstbookCubit extends Cubit<NewstbookState> {
  NewstbookCubit(this.homeRepo) : super(NewstbookInitial());
   final HomeRepo homeRepo ;
  Future <void> fetchNewstBooks () async {
    emit(NewstbookLoading());
    var result = await homeRepo.fetchFeaturedBooks();
    result.fold((fauiler) {
      emit(NewstbookFauilar(fauiler.errmessage));
    }, (books) {
      emit(NewstbookSuccess(books));
    });
  }
}
