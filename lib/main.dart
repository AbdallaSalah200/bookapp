import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:e_book_app/core/utils/app_routers.dart';
import 'package:e_book_app/Feature/Splash/persentation/views/splash_view.dart';
//import 'package:get/get.dart';

void main() {
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return   MaterialApp.router(
      routerConfig: AppRouters.router,
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: const  Color(0xff100B20),
      textTheme: GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme)
      
      )
    
      ,
    
     // home:const  SplashView(),
    );
  }
}