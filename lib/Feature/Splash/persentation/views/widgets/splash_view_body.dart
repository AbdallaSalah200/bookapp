import './sliding_text.dart';
import 'package:flutter/material.dart';
import 'package:e_book_app/core/utils/assets.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}
late AnimationController animationcontiner ;
late Animation<Offset> slidinganimation ;

class _SplashViewBodyState extends State<SplashViewBody>with SingleTickerProviderStateMixin {
  @override
  void initState() {
  super.initState();
  animationcontiner =AnimationController(vsync:this,duration: const Duration(seconds: 1) );
  slidinganimation = Tween<Offset>(begin:const Offset(0,2) ,end:Offset.zero ).animate(animationcontiner);
  animationcontiner.forward();
}
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(AssetsData.logo),
        const SizedBox(
          height: 4,
        ),
     const slidingtext()
      ],
    );
  }
}

