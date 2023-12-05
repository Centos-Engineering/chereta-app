part of 'auth_bloc.dart';

sealed class AuthEvent extends Equatable {
  const AuthEvent();

  @override
  List<Object> get props => [];
}

class Authenticate extends AuthEvent {
  final String refreshToken;

  const Authenticate({required this.refreshToken});

  @override
  List<Object> get props => [refreshToken];
}

class RememberMe extends AuthEvent {
  const RememberMe();
}

class LogIn extends AuthEvent {
  final String email;
  final String password;
  final bool staySignedIn;

  const LogIn(
      {required this.email,
      required this.password,
      required this.staySignedIn});

  @override
  List<Object> get props => [email, password, staySignedIn];
}

class LogOut extends AuthEvent {
  final String refreshToken;
  final bool staySignedIn;

  const LogOut({required this.refreshToken, required this.staySignedIn});

  @override
  List<Object> get props => [refreshToken];
}
