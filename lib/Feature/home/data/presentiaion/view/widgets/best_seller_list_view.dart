import 'package:flutter/material.dart';
import 'package:e_book_app/Feature/home/data/presentiaion/view/widgets/best_seller_list_view_item.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      physics: const  NeverScrollableScrollPhysics(),
      itemCount: 10,
      itemBuilder: (context,index){
        return const  Padding(
          padding:  EdgeInsets.symmetric(vertical: 10),
          child:   BestSllerListViewItem(),
        );
      },
    );
  }
}