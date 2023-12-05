import 'dart:async';
import 'dart:io';

import '../../exceptions.dart';
import '../../models/login_model.dart';
import '../../services/auth_service.dart';
import '../../services/token_storage_service.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(const AuthInitial()) {
    on<Authenticate>(_authenticate);
    on<LogIn>(_login);
    on<RememberMe>(_rememberMe);
    on<LogOut>(_logout);
  }

  _logout(LogOut event, Emitter<AuthState> emit) async {
    emit(const AuthLoading());
    try {
      await AuthServices.logoutApi(refreshToken: event.refreshToken);
    } on SocketException {
      emit(const AuthError(error: "Can't reach our servers."));
    } on TimeoutException {
      emit(const AuthError(error: "Lost Network Connection"));
    } catch (error) {
      emit(const AuthError(error: "error"));
    }
    if (event.staySignedIn) {
      TokenStorage.delete();
    }
    emit(const NotAuthenticated());
  }

  _rememberMe(RememberMe event, Emitter<AuthState> emit) async {
    emit(const AuthLoading());
    try {
      String storedToken = await TokenStorage.read();

      if (storedToken == "") {
        emit(const NotAuthenticated());
        return;
      }

      final LoginModel data =
          await AuthServices.refreshTokenApi(refreshToken: storedToken);

      TokenStorage.save(refreshToken: data.refreshToken);

      emit(Authenticated(
          accessToken: data.accessToken,
          refreshToken: data.refreshToken,
          rememberMe: true));
      return;
    } on SocketException {
      emit(const AuthError(error: "Can't reach our servers."));
    } on TimeoutException {
      emit(const AuthError(error: "Lost Network Connection"));
    } catch (error) {
      emit(const AuthError(error: "error"));
    }
    TokenStorage.delete();
    emit(const NotAuthenticated());
  }

  _login(LogIn event, Emitter<AuthState> emit) async {
    emit(const AuthLoading());
    try {
      final LoginModel data =
          await AuthServices.loginApi(event.email, event.password);
      if (event.staySignedIn) {
        TokenStorage.save(refreshToken: data.refreshToken);
      }
      emit(Authenticated(
          accessToken: data.accessToken,
          refreshToken: data.refreshToken,
          rememberMe: event.staySignedIn));
      return;
    } on SocketException {
      emit(const AuthError(error: "Can't reach our servers."));
    } on TimeoutException {
      emit(const AuthError(error: "Lost Network Connection"));
    } on InvalidCridentialException {
      emit(const AuthError(error: "Invalid Username/Passwrod"));
    } catch (error) {
      emit(AuthError(error: error.toString()));
    }
    emit(const NotAuthenticated());
  }

  _authenticate(Authenticate event, Emitter<AuthState> emit) async {
    emit(const AuthLoading());
    try {
      final LoginModel data =
          await AuthServices.refreshTokenApi(refreshToken: event.refreshToken);

      TokenStorage.save(refreshToken: data.refreshToken);

      emit(Authenticated(
          accessToken: data.accessToken,
          refreshToken: data.refreshToken,
          rememberMe: true));
      return;
    } on SocketException {
      emit(const AuthError(error: "Can't reach our servers."));
    } on TimeoutException {
      emit(const AuthError(error: "Lost Network Connection"));
    } catch (error) {
      emit(const AuthError(error: "error"));
    }
    TokenStorage.delete();
    emit(const NotAuthenticated());
  }
}
