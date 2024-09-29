class AnnouncementException implements Exception {
  const AnnouncementException(this.error, this.stackTrace);

  final Object error;

  final StackTrace stackTrace;

  @override
  String toString() {
    return error.toString();
  }
}
