import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:e_book_app/widgets/custom_err_message.dart';
import 'package:e_book_app/Feature/home/data/presentiaion/view/widgets/custom_book_title.dart';
import 'package:e_book_app/Feature/home/data/presentiaion/mangers/similar_book_cubit/similar_book_cubit.dart';

class SimialrBookListView extends StatelessWidget {
  const SimialrBookListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBookCubit, SimilarBookState>(
      builder: (context, state) {
        if (state is SimilarBooksSuccess) {
  return SizedBox(
     height: MediaQuery.of(context).size.height*.15,
    child: ListView.builder(
      itemCount: state.books.length,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context,index){
        return   Padding(
          padding: const  EdgeInsets.symmetric(horizontal: 5),
          child:    CustomBookImage(
            imageurl: state.books[index].volumeInfo.imageLinks?.smallThumbnail??'',
          ),
        );
      },
    ),
  );
}else if (state is SimilarBooksFailure){
  return CustomErrMessage(errmessage: state.errMessage);
}else{
  return const  Center(child: CircularProgressIndicator());
}
      },
    );
  }
}