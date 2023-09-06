import 'package:flutter/material.dart';
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
          padding: EdgeInsets.symmetric(horizontal: width*.17),
          child: const  CustomBookImage(),
        ),
        
    
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