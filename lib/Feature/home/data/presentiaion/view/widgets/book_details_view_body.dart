import 'package:flutter/material.dart';
import 'package:e_book_app/core/utils/styles.dart';
import '../../../models/book_model/book_model.dart';
import 'package:e_book_app/Feature/home/data/presentiaion/view/widgets/book_action.dart';
import 'package:e_book_app/Feature/home/data/presentiaion/view/widgets/book_rating.dart';
import 'package:e_book_app/Feature/home/data/presentiaion/view/widgets/custom_button.dart';
import 'package:e_book_app/Feature/home/data/presentiaion/view/widgets/custom_book_title.dart';
import 'package:e_book_app/Feature/home/data/presentiaion/view/widgets/similar_book_deatils.dart';
import 'package:e_book_app/Feature/home/data/presentiaion/view/widgets/book_deatils_section.dart';
import 'package:e_book_app/Feature/home/data/presentiaion/view/widgets/simialr_book_list_view.dart';
import 'package:e_book_app/Feature/home/data/presentiaion/view/widgets/custom_app_bar_book_details.dart';


class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key, required this.bookmodel});
final BookModel bookmodel ;
  @override
  Widget build(BuildContext context) {
 
    return  CustomScrollView(
      slivers: [
        SliverFillRemaining(
          child: Padding(
      padding:   const   EdgeInsets.symmetric(horizontal: 30),
      child:   Column(
       children: [
       const   SafeArea(child: CustomBookdeatialsAppBar()),
       BookDeatilsSection(
      book:  bookmodel,
       ),
      const  SimialrBookDeatils(),
  
       ],
      ),
    ),
        )
      ],
    );
   
  }
}


