import 'package:go_router/go_router.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:e_book_app/core/utils/service_locator.dart';
import 'package:e_book_app/Feature/home/data/repo/home_repo_impl.dart';
import 'package:e_book_app/Feature/search/presention/views/search_view.dart';
import 'package:e_book_app/Feature/home/data/presentiaion/view/home_view.dart';
import 'package:e_book_app/Feature/Splash/persentation/views/splash_view.dart';
import 'package:e_book_app/Feature/home/data/models/book_model/book_model.dart';
import 'package:e_book_app/Feature/home/data/presentiaion/view/book_details_view.dart';
import 'package:e_book_app/Feature/home/data/presentiaion/mangers/similar_book_cubit/similar_book_cubit.dart';

abstract class AppRouters {
  static const  kHomeView ='/homeView';
  static const  kBookDetialsView ='/bookDetailsView';
  static const  kSearchview ='/searchView';
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
     GoRoute(
      path: kBookDetialsView,
      builder: (context, state) =>    BlocProvider(
        create: (context) => SimilarBookCubit(getIt.get<HomeRepoImpl>()),
        child:  BookDetailsView(
          bookmodel: state.extra as BookModel,
        ),
      ),
    ),
    GoRoute(
      path: kSearchview ,
      builder: (context, state) =>  const SearchView(),
    ),
  ]
 );
    
}