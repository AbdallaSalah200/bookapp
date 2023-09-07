import 'package:flutter/material.dart';
import '../../../../../../core/utils/styles.dart';


class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.text, required this.background, required this.textColor, this.borderRadius, this.fontweight});
 final String text ;
 final Color background ;
 final Color textColor ;
 final BorderRadius ? borderRadius ;
 final FontWeight?fontweight ;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(
        
        style:TextButton.styleFrom(
          
          backgroundColor: background,
          shape : RoundedRectangleBorder(
            borderRadius: borderRadius??BorderRadius.circular(12)
          )
        ) ,
        onPressed: (){},
        child: Text(text,style: Styles.textStyle18.copyWith(color: textColor,fontWeight: fontweight),),
        
      ),
    );
  }
}