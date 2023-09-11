import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:e_book_app/core/utils/app_routers.dart';
import 'package:e_book_app/core/utils/service_locator.dart';
import 'package:e_book_app/Feature/home/data/repo/home_repo_impl.dart';
import 'package:e_book_app/Feature/Splash/persentation/views/splash_view.dart';
import 'package:e_book_app/Feature/home/data/presentiaion/mangers/newst_book_cubit/newstbook_cubit.dart';
import 'package:e_book_app/Feature/home/data/presentiaion/mangers/feature_book_cubit/feture_book_cubit.dart';
//import 'package:flutter_bloc/flutter_bloc.dart';
//import 'package:get/get.dart';

void main() {
  setupServiceLocator();
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return   MultiBlocProvider(
       providers: [
        BlocProvider(
          create: (context) => FetureBookCubit(
            getIt.get<HomeRepoImpl>(),
          )..fetchFeaturedBooks(),
        ),
        BlocProvider(
          create: (context) => NewstbookCubit(
            getIt.get<HomeRepoImpl>(),
          )//..fetchNewestBooks(),
        )
      ],
      child: MaterialApp.router(
        routerConfig: AppRouters.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: const  Color(0xff100B20),
        textTheme: GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme)
        
        )
      
        ,
      
       // home:const  SplashView(),
      ),
    );
  }
}