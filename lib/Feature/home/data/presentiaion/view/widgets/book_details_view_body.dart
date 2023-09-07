import 'package:flutter/material.dart';
import 'package:e_book_app/core/utils/styles.dart';
import 'package:e_book_app/Feature/home/data/presentiaion/view/widgets/custom_book_title.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width =MediaQuery.of(context).size.width ;
    return  Padding(
      padding: const   EdgeInsets.symmetric(horizontal: 30),
      child:   Column(
       children: [
      const   SafeArea(child: CustomBookdeatialsAppBar()),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width*.2),
          child: const  CustomBookImage(),
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
        child: Text('Rudyard kipling ',style: Styles.textStyle18.copyWith(fontStyle: FontStyle.italic,fontWeight: FontWeight.w500),)),
       ],
      ),
    );
  }
}
class CustomBookdeatialsAppBar extends StatelessWidget {
  const CustomBookdeatialsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(onPressed: (){}, icon:const  Icon(Icons.close)),
         IconButton(onPressed: (){}, icon:const  Icon(Icons.shopping_cart_outlined)),
      ],
    );
  }
}