import 'dart:convert';
import '../constants/api.dart';
import '../exceptions.dart';
import '../models/login_model.dart';
import 'package:http/http.dart' as http;

class AuthServices {
  static const int timeout = 10;

  static Future<void> logoutApi({required String refreshToken}) async {
    final url = Uri.parse(AuthRoutes.logout);
    final response = await http
        .delete(
          url,
          headers: {'Content-Type': 'application/json'},
          body: jsonEncode({'refreshToken': refreshToken}),
        )
        .timeout(const Duration(seconds: timeout));

    if (response.statusCode == 200) {
      return;
    } else if (response.statusCode == 401) {
      throw InvalidCridentialException();
    } else {
      throw Exception("Error");
    }
  }

  static Future<LoginModel> loginApi(String email, String password) async {
    final url = Uri.parse(AuthRoutes.login);
    final response = await http
        .post(
          url,
          headers: {'Content-Type': 'application/json'},
          body: jsonEncode({'email': email, 'password': password}),
        )
        .timeout(const Duration(seconds: timeout));

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      if (data is Map<String, dynamic>) {
        return LoginModel(
            accessToken: data["accessToken"],
            refreshToken: data["refreshToken"]);
      } else {
        throw Exception("Error");
      }
    } else if (response.statusCode == 401) {
      throw InvalidCridentialException();
    } else {
      throw Exception("Error");
    }
  }

  static Future<LoginModel> refreshTokenApi(
      {required String refreshToken}) async {
    final url = Uri.parse(AuthRoutes.refreshToken);
    final response = await http
        .post(
          url,
          headers: {'Content-Type': 'application/json'},
          body: jsonEncode({'refreshToken': refreshToken}),
        )
        .timeout(const Duration(seconds: timeout));

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      if (data is Map<String, dynamic>) {
        return LoginModel(
            accessToken: data["accessToken"],
            refreshToken: data["refreshToken"]);
      } else {
        throw Exception("Error");
      }
    } else if (response.statusCode == 401) {
      throw UnauthorizedException();
    } else {
      throw Exception("Error");
    }
  }
}
