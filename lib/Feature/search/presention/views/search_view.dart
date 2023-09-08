import 'package:flutter/material.dart';
import 'package:e_book_app/Feature/home/data/presentiaion/view/widgets/search_view_body.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return const  Scaffold(
      body: SafeArea(child: SearchViewBody() ),
    );
  }
}