// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_news_list_input.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetNewsListInputImpl _$$GetNewsListInputImplFromJson(
        Map<String, dynamic> json) =>
    _$GetNewsListInputImpl(
      page: (json['page'] as num).toInt(),
      pageSize: (json['pageSize'] as num).toInt(),
      isPinned: json['isPinned'] as bool?,
      isBookmark: json['isBookmark'] as bool?,
    );

Map<String, dynamic> _$$GetNewsListInputImplToJson(
        _$GetNewsListInputImpl instance) =>
    <String, dynamic>{
      'page': instance.page,
      'pageSize': instance.pageSize,
      'isPinned': instance.isPinned,
      'isBookmark': instance.isBookmark,
    };
