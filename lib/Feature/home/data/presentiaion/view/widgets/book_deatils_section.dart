import './custom_book_title.dart';
import 'package:flutter/material.dart';
import '../../../../../../core/utils/styles.dart';
import 'package:e_book_app/Feature/home/data/models/book_model/book_model.dart';
import 'package:e_book_app/Feature/home/data/presentiaion/view/widgets/book_action.dart';
import 'package:e_book_app/Feature/home/data/presentiaion/view/widgets/book_rating.dart';




class BookDeatilsSection extends StatelessWidget {
  const BookDeatilsSection({super.key, required this.book});
final BookModel book;
  @override
  Widget build(BuildContext context) {
       var width =MediaQuery.of(context).size.width ;
    return Column(
      children: [
         Padding(
          padding: EdgeInsets.symmetric(horizontal: width*.2),
          child:     CustomBookImage(
            imageurl: book.volumeInfo.imageLinks?.thumbnail??'',
          ),
        ),
        const SizedBox(
          height: 43,
        ),
 Text(book.volumeInfo.title!,style: Styles.textStyle30.copyWith(fontWeight: FontWeight.bold),textAlign:TextAlign.center ,),
    const SizedBox(
          height: 6,
        ),
       Opacity(
        opacity: .7,
        child: Text(book.volumeInfo.authors![0],
        style: Styles.textStyle18.copyWith(fontStyle: FontStyle.italic,fontWeight: FontWeight.w500),
        ),),
        const SizedBox(
          height: 18,
        ),
        BookRating(
        rating: book.volumeInfo.averageRating??0,
        count: book.volumeInfo.ratingsCount??0,
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        const SizedBox(
          height:18
        ),
        const  BookAction(),
        const SizedBox(
          height: 50,

        ),
      ],
    );
  }
}