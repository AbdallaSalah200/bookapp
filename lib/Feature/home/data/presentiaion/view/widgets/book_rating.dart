import 'package:flutter/material.dart';
import '../../../../../../core/utils/styles.dart';
import 'package:font_awesome_icon_class/font_awesome_icon_class.dart';


class BookRating  extends StatelessWidget {
  const BookRating ({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(children: [
     const  Icon (FontAwesomeIcons.solidStar,color: Color(0XffFFDD4F),),
     const   SizedBox(
        width: 6.3,
      ),
  const     Text('4.8',style: Styles.textStyle16,),
    const      SizedBox(
        width: 6.3,
      ),
      Text('235',style: Styles.textStyle14.copyWith(color: const Color(0xff707070)),)
    ],);
  }
}