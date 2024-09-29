// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_news_list_input.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetNewsListInput _$GetNewsListInputFromJson(Map<String, dynamic> json) {
  return _GetNewsListInput.fromJson(json);
}

/// @nodoc
mixin _$GetNewsListInput {
  int get page => throw _privateConstructorUsedError;
  int get pageSize => throw _privateConstructorUsedError;
  bool? get isPinned => throw _privateConstructorUsedError;
  bool? get isBookmark => throw _privateConstructorUsedError;

  /// Serializes this GetNewsListInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GetNewsListInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetNewsListInputCopyWith<GetNewsListInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetNewsListInputCopyWith<$Res> {
  factory $GetNewsListInputCopyWith(
          GetNewsListInput value, $Res Function(GetNewsListInput) then) =
      _$GetNewsListInputCopyWithImpl<$Res, GetNewsListInput>;
  @useResult
  $Res call({int page, int pageSize, bool? isPinned, bool? isBookmark});
}

/// @nodoc
class _$GetNewsListInputCopyWithImpl<$Res, $Val extends GetNewsListInput>
    implements $GetNewsListInputCopyWith<$Res> {
  _$GetNewsListInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetNewsListInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? pageSize = null,
    Object? isPinned = freezed,
    Object? isBookmark = freezed,
  }) {
    return _then(_value.copyWith(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      pageSize: null == pageSize
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int,
      isPinned: freezed == isPinned
          ? _value.isPinned
          : isPinned // ignore: cast_nullable_to_non_nullable
              as bool?,
      isBookmark: freezed == isBookmark
          ? _value.isBookmark
          : isBookmark // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetNewsListInputImplCopyWith<$Res>
    implements $GetNewsListInputCopyWith<$Res> {
  factory _$$GetNewsListInputImplCopyWith(_$GetNewsListInputImpl value,
          $Res Function(_$GetNewsListInputImpl) then) =
      __$$GetNewsListInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int page, int pageSize, bool? isPinned, bool? isBookmark});
}

/// @nodoc
class __$$GetNewsListInputImplCopyWithImpl<$Res>
    extends _$GetNewsListInputCopyWithImpl<$Res, _$GetNewsListInputImpl>
    implements _$$GetNewsListInputImplCopyWith<$Res> {
  __$$GetNewsListInputImplCopyWithImpl(_$GetNewsListInputImpl _value,
      $Res Function(_$GetNewsListInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetNewsListInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? pageSize = null,
    Object? isPinned = freezed,
    Object? isBookmark = freezed,
  }) {
    return _then(_$GetNewsListInputImpl(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      pageSize: null == pageSize
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int,
      isPinned: freezed == isPinned
          ? _value.isPinned
          : isPinned // ignore: cast_nullable_to_non_nullable
              as bool?,
      isBookmark: freezed == isBookmark
          ? _value.isBookmark
          : isBookmark // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetNewsListInputImpl implements _GetNewsListInput {
  const _$GetNewsListInputImpl(
      {required this.page,
      required this.pageSize,
      this.isPinned,
      this.isBookmark});

  factory _$GetNewsListInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetNewsListInputImplFromJson(json);

  @override
  final int page;
  @override
  final int pageSize;
  @override
  final bool? isPinned;
  @override
  final bool? isBookmark;

  @override
  String toString() {
    return 'GetNewsListInput(page: $page, pageSize: $pageSize, isPinned: $isPinned, isBookmark: $isBookmark)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetNewsListInputImpl &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.pageSize, pageSize) ||
                other.pageSize == pageSize) &&
            (identical(other.isPinned, isPinned) ||
                other.isPinned == isPinned) &&
            (identical(other.isBookmark, isBookmark) ||
                other.isBookmark == isBookmark));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, page, pageSize, isPinned, isBookmark);

  /// Create a copy of GetNewsListInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetNewsListInputImplCopyWith<_$GetNewsListInputImpl> get copyWith =>
      __$$GetNewsListInputImplCopyWithImpl<_$GetNewsListInputImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetNewsListInputImplToJson(
      this,
    );
  }
}

abstract class _GetNewsListInput implements GetNewsListInput {
  const factory _GetNewsListInput(
      {required final int page,
      required final int pageSize,
      final bool? isPinned,
      final bool? isBookmark}) = _$GetNewsListInputImpl;

  factory _GetNewsListInput.fromJson(Map<String, dynamic> json) =
      _$GetNewsListInputImpl.fromJson;

  @override
  int get page;
  @override
  int get pageSize;
  @override
  bool? get isPinned;
  @override
  bool? get isBookmark;

  /// Create a copy of GetNewsListInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetNewsListInputImplCopyWith<_$GetNewsListInputImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
