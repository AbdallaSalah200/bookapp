import 'package:flutter/material.dart';
import 'package:e_book_app/Feature/Splash/persentation/views/widgets/splash_view_body.dart';

class slidingtext extends StatelessWidget {
  const slidingtext({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: slidinganimation,
      builder: (context,_){
        return  SlideTransition(
        position: slidinganimation,
        child: const     Text('Read free books',textAlign:TextAlign.center,));
      },
      
    );
  }
}