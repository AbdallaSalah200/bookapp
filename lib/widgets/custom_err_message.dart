import 'package:flutter/material.dart';
import 'package:e_book_app/core/utils/styles.dart';

class CustomErrMessage extends StatelessWidget {
  const CustomErrMessage({super.key, required this.errmessage});
final String errmessage ;
  @override
  Widget build(BuildContext context) {
    return Text(errmessage,style: Styles.textStyle18,);
  }
}