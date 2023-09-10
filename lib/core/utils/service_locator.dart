import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:e_book_app/core/utils/api_service.dart';
import 'package:e_book_app/Feature/home/data/repo/home_repo_impl.dart';

final getIt = GetIt.instance;
void setupServiceLocator (){
  getIt.registerSingleton<ApiServices>(ApiServices(Dio()));
  getIt.registerSingleton<HomeRepoImpl>(HomeRepoImpl(getIt.get<ApiServices>()
  ,)
  ,
  );
}