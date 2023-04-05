part of 'user_bloc.dart';

@immutable
abstract class UserState  extends Equatable{
  const UserState();
}

class UserInitial extends UserState {
  @override
  List<Object?> get props => throw UnimplementedError();

}
