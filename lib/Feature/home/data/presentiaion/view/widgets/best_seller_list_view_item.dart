import 'package:flutter/material.dart';
import '../../../../../../core/utils/assets.dart';


class BestSllerListViewItem extends StatelessWidget {
  const BestSllerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return   SizedBox(
      height:100,
      child: Row(children: [
        AspectRatio(
        aspectRatio: 2.5/4,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadiusDirectional.circular(16),
            color: Colors.red,
            image: const  DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(AssetsData.test))
          ),
      
        ),
      )
      ],),
    );
  }
}