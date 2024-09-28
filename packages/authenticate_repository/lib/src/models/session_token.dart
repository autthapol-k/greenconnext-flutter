class SessionToken {
  const SessionToken(
      {required this.type,
      required this.accessToken,
      required this.refreshToken,
      required this.expiredIn});

  final String type;
  final String accessToken;
  final String refreshToken;
  final int expiredIn;
}
