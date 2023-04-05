part of 'user_bloc.dart';

@immutable
abstract class UserEvent extends Equatable{
  const UserEvent();
}

class GetMovieDataEvent extends UserEvent {
  @override
  List<LoginResponseModel?> get props => [];
}