import 'package:bookly_app/core/utils/api_service.dart';
import 'package:bookly_app/features/home/data/repos/home_repo_implementation.dart';
import 'package:bookly_app/features/search/data/repos/search_repo_implementation.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;
void setupServiceLoactor() {
  getIt.registerSingleton<HomeRepoImplementation>(
    HomeRepoImplementation(
      ApiService(
        Dio(),
      ),
    ),
  );
  getIt.registerSingleton<SearchRepoImplementation>(
    SearchRepoImplementation(
      ApiService(
        Dio(),
      ),
    ),
  );
}
