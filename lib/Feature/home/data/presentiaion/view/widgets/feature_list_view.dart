import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:e_book_app/widgets/loading_indicator.dart';
import 'package:e_book_app/widgets/custom_err_message.dart';
import 'package:e_book_app/Feature/home/data/presentiaion/view/widgets/custom_book_title.dart';
import 'package:e_book_app/Feature/home/data/presentiaion/mangers/feature_book_cubit/feture_book_cubit.dart';

class FeatureListView extends StatelessWidget {
  const FeatureListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FetureBookCubit,FetureBookState>(
      builder: (context,state){
        if (state is FetureBookSuccess) {
  return SizedBox(
   height: MediaQuery.of(context).size.height*.25,
  child: ListView.builder(
    physics:  const BouncingScrollPhysics(),
    itemCount: state.books.length,
    scrollDirection: Axis.horizontal,
    itemBuilder: (context,index){
      return   Padding(
        padding: const  EdgeInsets.all(8.0),
        child:    CustomBookImage(
          imageurl: state.books[index].volumeInfo.imageLinks!.smallThumbnail ,
        ),
      );
    },
  ),
        );
} else if (state is FetureBookFailure){
  return    CustomErrMessage(errmessage:state.errmessage);
}else {
  return const  LoadingIndicator();
}
      },
      
    );
  }
}