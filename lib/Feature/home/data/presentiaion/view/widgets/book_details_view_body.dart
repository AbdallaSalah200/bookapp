import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const  Column(
     children: [
      SafeArea(child: CustomBookdeatialsAppBar())
     ],
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