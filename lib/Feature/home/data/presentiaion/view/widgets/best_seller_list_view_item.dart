import 'package:flutter/material.dart';
import 'package:e_book_app/constant.dart';
import 'package:go_router/go_router.dart';
import '../../../../../../core/utils/assets.dart';
import 'package:e_book_app/core/utils/styles.dart';
import 'package:e_book_app/core/utils/app_routers.dart';
import 'package:font_awesome_icon_class/font_awesome_icon_class.dart';
import 'package:e_book_app/Feature/home/data/models/book_model/book_model.dart';
import 'package:e_book_app/Feature/home/data/presentiaion/view/widgets/book_rating.dart';
import 'package:e_book_app/Feature/home/data/presentiaion/view/widgets/custom_book_title.dart';


class CustomListView extends StatelessWidget {
  const CustomListView({super.key, required this.bookModel});
   final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return   GestureDetector(
      onTap: (){
   GoRouter.of(context).push(AppRouters.kBookDetialsView,extra: bookModel);
      },
      child: SizedBox(
        height:100,
        child: Row(children: [
          CustomBookImage(
                imageurl: bookModel.volumeInfo.imageLinks?.thumbnail ?? ''),
      const   SizedBox(
          width:30
        ),
       Expanded(
         child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           SizedBox(
            width: MediaQuery.of(context).size.width*.5,
             child:  Text(bookModel.volumeInfo.title!,
             style: Styles.textStyle20.copyWith(fontFamily: kFont),
             maxLines: 2,
             overflow: TextOverflow.ellipsis,),
           ),
           const SizedBox(
            height: 3,
           ),
            Text(bookModel.volumeInfo.authors![0],style: Styles.textStyle14,),
         const SizedBox(
            height: 3,
           ),
          Row(
            children: [
              Text('19.99E',style:Styles.textStyle20.copyWith(fontWeight: FontWeight.bold) ,),
           const    Spacer(),
               BookRating(
                rating: bookModel.volumeInfo.averageRating??0,
                count: bookModel.volumeInfo.ratingsCount??0,
               )
            ]
            ,
          )
          ],
         ),
       )
        ],
        ),
      ),
    );
  }
}
