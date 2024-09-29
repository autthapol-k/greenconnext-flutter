// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'session_token.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SessionToken _$SessionTokenFromJson(Map<String, dynamic> json) {
  return _SessionToken.fromJson(json);
}

/// @nodoc
mixin _$SessionToken {
  String get type => throw _privateConstructorUsedError;
  String get accessToken => throw _privateConstructorUsedError;
  String get refreshToken => throw _privateConstructorUsedError;
  int get expiredIn => throw _privateConstructorUsedError;

  /// Serializes this SessionToken to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SessionToken
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SessionTokenCopyWith<SessionToken> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SessionTokenCopyWith<$Res> {
  factory $SessionTokenCopyWith(
          SessionToken value, $Res Function(SessionToken) then) =
      _$SessionTokenCopyWithImpl<$Res, SessionToken>;
  @useResult
  $Res call(
      {String type, String accessToken, String refreshToken, int expiredIn});
}

/// @nodoc
class _$SessionTokenCopyWithImpl<$Res, $Val extends SessionToken>
    implements $SessionTokenCopyWith<$Res> {
  _$SessionTokenCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SessionToken
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? accessToken = null,
    Object? refreshToken = null,
    Object? expiredIn = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      accessToken: null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      refreshToken: null == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
      expiredIn: null == expiredIn
          ? _value.expiredIn
          : expiredIn // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SessionTokenImplCopyWith<$Res>
    implements $SessionTokenCopyWith<$Res> {
  factory _$$SessionTokenImplCopyWith(
          _$SessionTokenImpl value, $Res Function(_$SessionTokenImpl) then) =
      __$$SessionTokenImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String type, String accessToken, String refreshToken, int expiredIn});
}

/// @nodoc
class __$$SessionTokenImplCopyWithImpl<$Res>
    extends _$SessionTokenCopyWithImpl<$Res, _$SessionTokenImpl>
    implements _$$SessionTokenImplCopyWith<$Res> {
  __$$SessionTokenImplCopyWithImpl(
      _$SessionTokenImpl _value, $Res Function(_$SessionTokenImpl) _then)
      : super(_value, _then);

  /// Create a copy of SessionToken
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? accessToken = null,
    Object? refreshToken = null,
    Object? expiredIn = null,
  }) {
    return _then(_$SessionTokenImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      accessToken: null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      refreshToken: null == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
      expiredIn: null == expiredIn
          ? _value.expiredIn
          : expiredIn // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SessionTokenImpl implements _SessionToken {
  const _$SessionTokenImpl(
      {required this.type,
      required this.accessToken,
      required this.refreshToken,
      required this.expiredIn});

  factory _$SessionTokenImpl.fromJson(Map<String, dynamic> json) =>
      _$$SessionTokenImplFromJson(json);

  @override
  final String type;
  @override
  final String accessToken;
  @override
  final String refreshToken;
  @override
  final int expiredIn;

  @override
  String toString() {
    return 'SessionToken(type: $type, accessToken: $accessToken, refreshToken: $refreshToken, expiredIn: $expiredIn)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SessionTokenImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken) &&
            (identical(other.refreshToken, refreshToken) ||
                other.refreshToken == refreshToken) &&
            (identical(other.expiredIn, expiredIn) ||
                other.expiredIn == expiredIn));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, type, accessToken, refreshToken, expiredIn);

  /// Create a copy of SessionToken
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SessionTokenImplCopyWith<_$SessionTokenImpl> get copyWith =>
      __$$SessionTokenImplCopyWithImpl<_$SessionTokenImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SessionTokenImplToJson(
      this,
    );
  }
}

abstract class _SessionToken implements SessionToken {
  const factory _SessionToken(
      {required final String type,
      required final String accessToken,
      required final String refreshToken,
      required final int expiredIn}) = _$SessionTokenImpl;

  factory _SessionToken.fromJson(Map<String, dynamic> json) =
      _$SessionTokenImpl.fromJson;

  @override
  String get type;
  @override
  String get accessToken;
  @override
  String get refreshToken;
  @override
  int get expiredIn;

  /// Create a copy of SessionToken
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SessionTokenImplCopyWith<_$SessionTokenImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
