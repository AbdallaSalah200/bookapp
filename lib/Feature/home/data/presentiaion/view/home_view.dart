import 'package:flutter/material.dart';
import 'package:e_book_app/Feature/home/data/presentiaion/view/widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const  Scaffold(
      body: HomeViewBody(),
    );
  }
}