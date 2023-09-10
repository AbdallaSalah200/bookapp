import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import '../../../models/book_model/book_model.dart';


part 'newstbook_state.dart';

class NewstbookCubit extends Cubit<NewstbookState> {
  NewstbookCubit() : super(NewstbookInitial());
  
}
