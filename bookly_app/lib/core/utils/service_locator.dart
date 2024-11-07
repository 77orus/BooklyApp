import 'package:bookly_app/core/utils/services/api_services.dart';
import 'package:bookly_app/features/Home/data/repo/home_repo_imple.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupServiceLocator() {
  getIt.registerSingleton<ApiServices>(ApiServices(Dio()));
  getIt.registerSingleton<HomeRepoImple>(
    HomeRepoImple(getIt.get<ApiServices>()),
  );
}
