import './sliding_text.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:e_book_app/constant.dart';
import 'package:e_book_app/core/utils/assets.dart';
import 'package:e_book_app/core/utils/app_routers.dart';
import 'package:e_book_app/Feature/home/data/presentiaion/view/home_view.dart';


//import 'package:get/get.dart';




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
  initslidinganimation();
  navigationtohome();
}

  
 
@override
  void dispose() {
   
    super.dispose();
    animationcontiner.dispose();
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
   void initslidinganimation() {
     animationcontiner =AnimationController(vsync:this,duration: const Duration(seconds: 1) );
    slidinganimation = Tween<Offset>(begin:const Offset(0,2) ,end:Offset.zero ).animate(animationcontiner);
    animationcontiner.forward();
  }
  void navigationtohome() {
    Future.delayed(const Duration( seconds: 2),
    (){
      // Get.to(()=> const  HomeView(),
      // transition: Transition.fade ,duration: kTranslition
      // );
      GoRouter.of(context).push(AppRouters.kHomeView);
    }
    );
  }

}

