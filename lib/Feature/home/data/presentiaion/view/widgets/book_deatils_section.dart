import './custom_book_title.dart';
import 'package:flutter/material.dart';
import '../../../../../../core/utils/styles.dart';
import 'package:e_book_app/Feature/home/data/presentiaion/view/widgets/book_action.dart';
import 'package:e_book_app/Feature/home/data/presentiaion/view/widgets/book_rating.dart';



class BookDeatilsSection extends StatelessWidget {
  const BookDeatilsSection({super.key});

  @override
  Widget build(BuildContext context) {
       var width =MediaQuery.of(context).size.width ;
    return Column(
      children: [
         Padding(
          padding: EdgeInsets.symmetric(horizontal: width*.2),
          child:   const  CustomBookImage(
            imageurl: 'https://media.istockphoto.com/id/472340869/vector/app-icons-collection.jpg?s=612x612&w=0&k=20&c=fiaW0nq5lnynteWxKEYTExkglUJuC4LuDj_6IU9DbfM=',
          ),
        ),
        const SizedBox(
          height: 43,
        ),
 Text('The jungle book',style: Styles.textStyle30.copyWith(fontWeight: FontWeight.bold),),
    const SizedBox(
          height: 6,
        ),
       Opacity(
        opacity: .7,
        child: Text('Rudyard kipling ',
        style: Styles.textStyle18.copyWith(fontStyle: FontStyle.italic,fontWeight: FontWeight.w500),
        ),),
        const SizedBox(
          height: 18,
        ),
       const  BookRating(
        rating: 5,
        count: 225,
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