import 'package:flutter/material.dart';
import 'package:e_book_app/Feature/home/data/presentiaion/view/widgets/custom_app_bar.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const  Column(
      children:  [
        CustomAppBar(),
       ],
    );
  }
}