import 'package:flutter/material.dart';
import '../../../../../../core/utils/styles.dart';
import 'package:e_book_app/Feature/home/data/presentiaion/view/widgets/simialr_book_list_view.dart';


class SimialrBookDeatils extends StatelessWidget {
  const SimialrBookDeatils({super.key});

  @override
  Widget build(BuildContext context) {
    return  const  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
           Text('you can also like ',style: Styles.textStyle16,),
            SizedBox(height: 16,),
         SimialrBookListView(),
        SizedBox(
        height:40
       )
      ],
    );
  }
}
