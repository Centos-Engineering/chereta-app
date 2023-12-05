import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class TokenStorage {
  static const secureStorage = FlutterSecureStorage();
  static const valueKey = "token";
  static void save({required String refreshToken}) async {
    await secureStorage.write(key: valueKey, value: refreshToken);
  }

  static Future<String> read() async {
    String storedValue = await secureStorage.read(key: valueKey) ?? "";
    return storedValue;
  }

  static void delete() async {
    await secureStorage.delete(key: valueKey);
  }
}
