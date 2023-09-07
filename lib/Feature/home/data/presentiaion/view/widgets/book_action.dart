import 'package:flutter/material.dart';
import 'package:e_book_app/Feature/home/data/presentiaion/view/widgets/custom_button.dart';

class BookAction extends StatelessWidget {
  const BookAction({super.key});

  @override
  Widget build(BuildContext context) {
    return const   Padding(
      padding:  EdgeInsets.symmetric(horizontal: 8),
      child:   Row(
        
        children: [
        Expanded(
          
          child: CustomButton(
            borderRadius: BorderRadius.only(topLeft: Radius.circular(12),bottomLeft: Radius.circular(12)),
            text: '19.99y',
            fontweight: FontWeight.w900,
          background: Colors.white,
          textColor: Colors.black,
          ),
        ),
        Expanded(
          
          child: CustomButton(
            borderRadius: BorderRadius.only(topRight: Radius.circular(12),bottomRight: Radius.circular(12)),
            text: 'free preview',
            fontweight: FontWeight.w900,
          background: Color(0xffEF8262),
          textColor: Colors.white,
          ),
        )
        ],),
    );
  }
}
