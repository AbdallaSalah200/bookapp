import 'package:flutter/material.dart';
import 'package:e_book_app/Feature/Splash/persentation/views/widgets/splash_view_body.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return  const  Scaffold(
      body: SplashViewBody(),
    );
  }
}