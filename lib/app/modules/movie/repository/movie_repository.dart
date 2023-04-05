import 'package:get_it/get_it.dart';
import 'package:music/app/common/model/api_response_model.dart';
import 'package:music/app/modules/movie/repository/movie_repository_base.dart';
import 'package:music/app/modules/movie/service/movie_service.dart';

class MovieRepository extends MovieRepositoryBase{
  final MovieService service = GetIt.instance.get<MovieService>();
  MovieRepository();

  @override
  Future<APiResponseModel> getMovie() => service.getMovie();

  @override
  Future<APiResponseModel> getMovies() => service.getMovies();

}