import 'package:go_router/go_router.dart';
import 'package:e_book_app/Feature/home/data/presentiaion/view/home_view.dart';
import 'package:e_book_app/Feature/Splash/persentation/views/splash_view.dart';

abstract class AppRouters {
  static const  kHomeView ='/homeView';
 static  final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) =>  const SplashView(),
    ),
     GoRoute(
      path: kHomeView,
      builder: (context, state) =>  const HomeView(),
    ),
  ]
 );
    
}