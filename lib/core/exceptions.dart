class InvalidCridentialException implements Exception {
  InvalidCridentialException();

  @override
  String toString() {
    return '';
  }
}

class UnauthorizedException implements Exception {
  UnauthorizedException();

  @override
  String toString() {
    return '';
  }
}

class EmailConflict implements Exception {}

class AccessTokenTimeoutException implements Exception {
  AccessTokenTimeoutException();

  @override
  String toString() {
    return '';
  }
}

class OldPasswordDoesntMatchException implements Exception {}
