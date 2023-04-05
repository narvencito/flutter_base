// ignore_for_file: depend_on_referenced_packages, invalid_use_of_visible_for_testing_member, unnecessary_type_check

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:equatable/equatable.dart';
import 'package:music/app/config/init_config.dart';
import 'package:music/app/modules/movie/model/movie_response_model.dart';
import 'package:music/app/modules/movie/repository/movie_repository_base.dart';

part 'movie_event.dart';
part 'movie_state.dart';

class MovieBloc extends Bloc<MovieEvent, MovieState> {
  final MovieRepositoryBase _movieRepository =
      InitConfig.getItApp.get<MovieRepositoryBase>();

   Future<void> loadMovies() async {
     try {
       emit(const MovieLoadingState());
       final response = await _movieRepository.getMovies();
       emit(MovieLoadCompleteState(response!.data as List<MovieResponseModel>));
     } on Exception catch (e) {
       if(e is Exception){}
       // if (e is MissingApiKeyException) {
       //   emit(MovieErrorState('Please check the API key'));
       // } else if (e is ApiKeyInvalidException) {
       //   emit(MovieErrorState('La api Key no es valida'));
       // } else {
       //   emit(MovieErrorState('Unknown error'));
       // }
     }
   }

  MovieBloc() : super(const MovieLoadingState()) {
    on<MovieEvent>((event, emit) async {
      //on<GetMovieDataEvent>(_getMovieDataEvent);
    });
  }

  // void _getMovieDataEvent(
  //   GetMovieDataEvent event,
  //   Emitter<MovieState> emitter,
  // ) async {
  //   emitter(const MovieLoadingState());
  //   final response = await _movieRepository.getMovies();
  //   emit(MovieLoadCompleteState(response!.data as List<MovieResponseModel>));
  // }
}
