import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:e_book_app/widgets/custom_err_message.dart';
import 'package:e_book_app/Feature/home/data/presentiaion/view/widgets/best_seller_list_view_item.dart';
import 'package:e_book_app/Feature/home/data/presentiaion/mangers/newst_book_cubit/newstbook_cubit.dart';
class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewstbookCubit, NewstbookState>(
      builder: (context, state) {
        if (state is NewstbookSuccess) {
  return ListView.builder(
  padding: EdgeInsets.zero,
  physics: const  NeverScrollableScrollPhysics(),
  itemCount:state.book.length,
  itemBuilder: (context,index){
    return  Padding(
      padding:const   EdgeInsets.symmetric(vertical: 10),
      child:   CustomListView(
        bookModel: state.book[index],
      ),
    );
  },
        );
}else if(state is NewstbookFauilar){
  return CustomErrMessage(errmessage:state.errmessage);
}else {
  return const   Center(child: CircularProgressIndicator());
}
      },
       
    );
  }
}