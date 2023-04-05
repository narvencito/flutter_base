import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:music/app/modules/movie/repository/movie_repository_base.dart';
import 'package:music/app/modules/movie/service/movie_service.dart';
import 'package:music/app/util/contanst_app.dart';
import 'package:talker_dio_logger/talker_dio_logger.dart';

class InitConfig {
  static final getItApp = GetIt.instance;

  void setup() {
    final dio = Dio(BaseOptions(baseUrl: ConstansApp.urlBase, headers: {
      'X-RapidAPI-Key': '0901790b8dmsha7c1bf029a51eb3p131748jsnf256b4c02d3d',
      'X-RapidAPI-Host': 'moviesdatabase.p.rapidapi.com'
    }));
    dio.interceptors.add(TalkerDioLogger(
      settings: const TalkerDioLoggerSettings(
        printRequestHeaders: true,
        printResponseHeaders: true,
        printResponseMessage: true,
      ),
    ));
    getItApp.registerLazySingleton(() => dio);
    getItApp.registerLazySingleton(() => MovieService());
    getItApp.registerLazySingleton<MovieRepositoryBase>(() => MovieRepository());
  }
}
