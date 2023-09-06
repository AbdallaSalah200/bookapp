import 'package:flutter/material.dart';
import 'package:e_book_app/core/utils/styles.dart';
import 'package:e_book_app/core/utils/assets.dart';
import 'package:e_book_app/Feature/home/data/presentiaion/view/widgets/custom_app_bar.dart';
import 'package:e_book_app/Feature/home/data/presentiaion/view/widgets/feature_list_view.dart';
import 'package:e_book_app/Feature/home/data/presentiaion/view/widgets/custom_list_view_item.dart';
import 'package:e_book_app/Feature/home/data/presentiaion/view/widgets/best_seller_list_view_item.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const  Padding(
      padding:  EdgeInsets.symmetric(horizontal: 30),
      child:   Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:  [
          CustomAppBar(),
          FeatureListView(),
          SizedBox(
            height: 50,
          ),
          //        Padding(padding: EdgeInsets.symmetric(horizontal :16),child: Text('Popular Books',style: TextStyle(color: Colors
          Text('Best Saller ',style: Styles.textStyle18,),
          BestSllerListViewItem()
         ],
      ),
    );
  }
}
