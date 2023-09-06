import 'package:flutter/material.dart';
import 'package:e_book_app/constant.dart';
import 'package:go_router/go_router.dart';
import '../../../../../../core/utils/assets.dart';
import 'package:e_book_app/core/utils/styles.dart';
import 'package:e_book_app/core/utils/app_routers.dart';
import 'package:font_awesome_icon_class/font_awesome_icon_class.dart';
import 'package:e_book_app/Feature/home/data/presentiaion/view/widgets/book_rating.dart';


class BestSllerListViewItem extends StatelessWidget {
  const BestSllerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return   GestureDetector(
      onTap: (){
   GoRouter.of(context).push(AppRouters.kBookDetialsView);
      },
      child: SizedBox(
        height:100,
        child: Row(children: [
          AspectRatio(
          aspectRatio: 2.5/4,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadiusDirectional.circular(16),
              color: Colors.red,
              image: const  DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(AssetsData.test))
            ),
        
          ),
        ),
      const   SizedBox(
          width:30
        ),
       Expanded(
         child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           SizedBox(
            width: MediaQuery.of(context).size.width*.5,
             child:  Text('Harry potter  and the goblet of the fire ',
             style: Styles.textStyle20.copyWith(fontFamily: kFont),
             maxLines: 2,
             overflow: TextOverflow.ellipsis,),
           ),
           const SizedBox(
            height: 3,
           ),
         const   Text('Jk.Rowling',style: Styles.textStyle14,),
         const SizedBox(
            height: 3,
           ),
          Row(
            children: [
              Text('19.99E',style:Styles.textStyle20.copyWith(fontWeight: FontWeight.bold) ,),
           const    Spacer(),
            const   BookRating()
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
