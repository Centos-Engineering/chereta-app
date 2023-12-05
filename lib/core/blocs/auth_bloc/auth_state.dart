part of 'auth_bloc.dart';

sealed class AuthState extends Equatable {
  const AuthState();

  @override
  List<Object> get props => [];
}

final class AuthInitial extends AuthState {
  const AuthInitial() : super();
}

final class AuthLoading extends AuthState {
  const AuthLoading() : super();
}

final class NotAuthenticated extends AuthState {
  const NotAuthenticated() : super();
}

final class AuthError extends AuthState {
  final String error;
  const AuthError({required this.error});

  @override
  List<Object> get props => [error];
}

final class Authenticated extends AuthState {
  final String accessToken;
  final String refreshToken;
  final bool rememberMe;
  const Authenticated(
      {required this.accessToken,
      required this.refreshToken,
      required this.rememberMe})
      : super();

  @override
  List<Object> get props => [accessToken, refreshToken];
}
