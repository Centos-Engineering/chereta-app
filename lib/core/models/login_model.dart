import 'package:equatable/equatable.dart';

class LoginModel extends Equatable {
  final String refreshToken;
  final String accessToken;

  const LoginModel({required this.accessToken, required this.refreshToken});

  @override
  List<Object> get props => [accessToken, refreshToken];
}
