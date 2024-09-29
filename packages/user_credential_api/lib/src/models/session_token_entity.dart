import 'package:freezed_annotation/freezed_annotation.dart';

part 'session_token_entity.freezed.dart';

part 'session_token_entity.g.dart';


@freezed
class SessionTokenEntity with _$SessionTokenEntity {
  const factory SessionTokenEntity({
    required String type,
    required String accessToken,
    required String refreshToken,
    required int expiredIn,
  }) = _SessionTokenEntity;

  factory SessionTokenEntity.fromJson(Map<String, dynamic> json) =>
      _$SessionTokenEntityFromJson(json);
}
