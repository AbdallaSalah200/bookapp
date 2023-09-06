import 'package:flutter/material.dart';
import 'package:e_book_app/Feature/home/data/presentiaion/view/widgets/book_details_view_body.dart';

class BookDetailsView extends StatelessWidget {
  const BookDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      body: BookDetailsViewBody()  ,
    );
  }
}