import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:e_book_app/Feature/home/data/models/book_model/book_model.dart';

part 'feture_book_state.dart';

class FetureBookCubit extends Cubit<FetureBookState> {
  FetureBookCubit() : super(FetureBookInitial());
}
