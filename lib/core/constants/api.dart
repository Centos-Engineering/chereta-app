class ApiRoutes {
  static String baseUrl = "http://10.0.2.2:3000";
}

class AuthRoutes extends ApiRoutes {
  static String baseAuth = "${ApiRoutes.baseUrl}/auth";

  static String login = "$baseAuth/login";
  static String logout = "$baseAuth/logout";
  static String refreshToken = "$baseAuth/refresh-token";
  static String createAccount = "$baseAuth/register";
  static String updateUserData = "$baseAuth/update-user-info";
  static String updateUserPass = "$baseAuth/update-user-pass";
  static String getUserData = "$baseAuth/me";
  static String forgotPass = "$baseAuth/forgot-pass";

  static String sendVerificationCode = "$baseAuth/send-verification-code";
  static String verifyCode = "$baseAuth/verify-code";
}
