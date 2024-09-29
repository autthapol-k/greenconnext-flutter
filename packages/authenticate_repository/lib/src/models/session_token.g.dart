// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'session_token.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SessionTokenImpl _$$SessionTokenImplFromJson(Map<String, dynamic> json) =>
    _$SessionTokenImpl(
      type: json['type'] as String,
      accessToken: json['accessToken'] as String,
      refreshToken: json['refreshToken'] as String,
      expiredIn: (json['expiredIn'] as num).toInt(),
    );

Map<String, dynamic> _$$SessionTokenImplToJson(_$SessionTokenImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
      'accessToken': instance.accessToken,
      'refreshToken': instance.refreshToken,
      'expiredIn': instance.expiredIn,
    };
