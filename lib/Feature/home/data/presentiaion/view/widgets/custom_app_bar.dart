import 'package:flutter/material.dart';
import '../../../../../../core/utils/assets.dart';
import 'package:font_awesome_icon_class/font_awesome_icon_class.dart';


class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return   Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 40),
      child: Row(
        children: 
        [
        Image.asset(AssetsData.logo,
        height: 18,
        ),
        const  Spacer(),
        IconButton(onPressed: 
        (){}, icon:const   Icon(FontAwesomeIcons.magnifyingGlass,size: 25,),
        )
        
              ],
      ),
    );
  }
}