class ApiClientError implements Exception {
  const ApiClientError(this.cause, this.stackTrace);

  final dynamic cause;

  final StackTrace stackTrace;

  @override
  String toString() {
    return '''
    cause: $cause
    stackTrace: $stackTrace
    ''';
  }
}
