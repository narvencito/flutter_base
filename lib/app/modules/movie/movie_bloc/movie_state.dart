part of 'movie_bloc.dart';

@immutable
abstract class MovieState extends Equatable {
  const MovieState();
}


// class MovieInitialState extends MovieState {
//   const MovieInitialState();
//  @override
//   List<Object> get props => [];
// }

/// En este estado estamos haciendo la peticion a la REST API
class MovieLoadingState extends MovieState {
  const MovieLoadingState();
 @override
  List<Object> get props => [];
}

/// En este estado la REST API a respondido correctamente una lista de 'Articles'
class MovieLoadCompleteState extends MovieState {
  final List<MovieResponseModel> movies;

  const MovieLoadCompleteState(this.movies);

  @override
  List<Object> get props => [movies];
}
class MovieErrorState extends MovieState {
  final String message;

  const MovieErrorState(this.message);

  @override
  List<Object> get props => [message];
}
