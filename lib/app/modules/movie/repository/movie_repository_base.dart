import 'package:music/app/common/model/api_response_model.dart';
import 'package:music/app/config/init_config.dart';
import 'package:music/app/modules/movie/service/movie_service.dart';

abstract class MovieRepositoryBase{
  Future<APiResponseModel?> getMovies();
  Future<APiResponseModel?> getMovie();
}

class MovieRepository extends MovieRepositoryBase{
  final MovieService service = InitConfig.getItApp.get<MovieService>();
  MovieRepository();

  @override
  Future<APiResponseModel?> getMovie() => service.getMovie();

  @override
  Future<APiResponseModel?> getMovies() => service.getMovies();

}