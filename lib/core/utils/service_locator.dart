import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:ofbook/core/utils/api_service.dart';
import 'package:ofbook/features/home_feature/data/repos/home_repo_impl.dart';

final getIt = GetIt.instance;

void setup() {
  getIt.registerSingleton<HomeRepoImpl>(
    HomeRepoImpl(
      apiService: ApiService(
        Dio(),
      ),
    ),
  );
}
