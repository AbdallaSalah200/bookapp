import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../../../core/utils/assets.dart';
import 'package:e_book_app/core/utils/app_routers.dart';
import 'package:font_awesome_icon_class/font_awesome_icon_class.dart';


class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return   Row(
      children: 
      [
      Image.asset(AssetsData.logo,
      height: 18,
      ),
      const  Spacer(),
      IconButton(onPressed: 
      (){
        GoRouter.of(context).push(AppRouters.kSearchview);
      }, icon:const   Icon(FontAwesomeIcons.magnifyingGlass,size: 25,),
      )
      
            ],
    );
  }
}