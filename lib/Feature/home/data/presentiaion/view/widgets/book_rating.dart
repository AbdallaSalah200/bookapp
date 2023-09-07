import 'package:flutter/material.dart';
import '../../../../../../core/utils/styles.dart';
import 'package:font_awesome_icon_class/font_awesome_icon_class.dart';


class BookRating  extends StatelessWidget {
  const BookRating ({super.key,  this.mainAxisAlignment=MainAxisAlignment.start});
   final MainAxisAlignment mainAxisAlignment ;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment:mainAxisAlignment ,
      children:    [
    const   Icon (FontAwesomeIcons.solidStar,size: 14,color: Color(0XffFFDD4F),),
    const    SizedBox(
        width: 5,
      ),
      const  Text('4.8',style: Styles.textStyle16,),
        const  SizedBox(
        width: 6.3,
      ),
      Opacity(
        opacity: .5,
        child: Text('(235)',style: Styles.textStyle14.copyWith(fontWeight: FontWeight.w600),))
    ],);
  }
}