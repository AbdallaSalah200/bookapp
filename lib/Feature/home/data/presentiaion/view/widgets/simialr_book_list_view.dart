import 'package:flutter/material.dart';
import 'package:e_book_app/Feature/home/data/presentiaion/view/widgets/custom_book_title.dart';

class SimialrBookListView extends StatelessWidget {
  const SimialrBookListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
       height: MediaQuery.of(context).size.height*.15,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context,index){
          return const  Padding(
            padding:  EdgeInsets.symmetric(horizontal: 5),
            child:    CustomBookImage(),
          );
        },
      ),
    );
  }
}