// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'session_token_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SessionTokenEntityImpl _$$SessionTokenEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$SessionTokenEntityImpl(
      type: json['type'] as String,
      accessToken: json['accessToken'] as String,
      refreshToken: json['refreshToken'] as String,
      expiredIn: (json['expiredIn'] as num).toInt(),
    );

Map<String, dynamic> _$$SessionTokenEntityImplToJson(
        _$SessionTokenEntityImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
      'accessToken': instance.accessToken,
      'refreshToken': instance.refreshToken,
      'expiredIn': instance.expiredIn,
    };
