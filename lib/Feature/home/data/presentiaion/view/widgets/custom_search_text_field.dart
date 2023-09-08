import 'package:flutter/material.dart';
import 'package:font_awesome_icon_class/font_awesome_icon_class.dart';
import 'package:e_book_app/Feature/home/data/presentiaion/view/widgets/search_view_body.dart';

class CustomSearchTextField extends StatelessWidget {
  const CustomSearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        enabledBorder: 
        outlineinputborder(),
        focusedBorder: outlineinputborder(),
        suffixIcon: IconButton(onPressed: (){},
        
         icon:const  Opacity(
          opacity: .7,
          child:    Icon(FontAwesomeIcons.magnifyingGlass,size: 25,)
          ,)
          ,),
          hintText: 'search'
      ),
      
     
    );
  }
   OutlineInputBorder outlineinputborder() {
    return OutlineInputBorder(
        borderSide: const  BorderSide(color: Colors.white),
        borderRadius: BorderRadius.circular(12),
        
      );
  }
}