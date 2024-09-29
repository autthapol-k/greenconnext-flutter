import 'package:freezed_annotation/freezed_annotation.dart';

part 'session_token.freezed.dart';

part 'session_token.g.dart';

@freezed
class SessionToken with _$SessionToken {
  const factory SessionToken({
    required String type,
    required String accessToken,
    required String refreshToken,
    required int expiredIn,
}) = _SessionToken;

  factory SessionToken.fromJson(Map<String, dynamic> json) =>
      _$SessionTokenFromJson(json);
}