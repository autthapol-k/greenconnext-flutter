class AuthenticationException implements Exception {
  const AuthenticationException(this.error, this.stackTrace);

  final Object error;

  final StackTrace stackTrace;

  @override
  String toString() {
    return error.toString();
  }
}
