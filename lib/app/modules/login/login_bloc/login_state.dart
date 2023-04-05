part of 'login_bloc.dart';

@immutable
abstract class LoginState  extends Equatable{
  const LoginState();
}

class LoginInitial extends LoginState {
  @override
  List<Object?> get props => throw UnimplementedError();
}
