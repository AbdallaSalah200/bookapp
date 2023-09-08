import 'package:flutter/material.dart';
import '../../../../../../core/utils/styles.dart';
import 'package:font_awesome_icon_class/font_awesome_icon_class.dart';
import 'package:e_book_app/Feature/home/data/presentiaion/view/widgets/custom_search_text_field.dart';
import 'package:e_book_app/Feature/home/data/presentiaion/view/widgets/best_seller_list_view_item.dart';


class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
    CustomSearchTextField(),
     SizedBox(height: 20, ),
    Text('Result Search ',style: Styles.textStyle18,),
    SizedBox(height: 20, ),
    Expanded(child: SearchResultListView())
    ],);
  }
}

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      itemCount: 10,
      itemBuilder: (context,index){
        return const  Padding(
          padding:  EdgeInsets.symmetric(vertical: 10),
          child:   CustomListView(),
        );
      },
    );
  }
}
 
