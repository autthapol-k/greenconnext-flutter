// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NewsImpl _$$NewsImplFromJson(Map<String, dynamic> json) => _$NewsImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      thumbnailUrl: json['thumbnailUrl'] as String,
      publisher: json['publisher'] as String,
      publishAt: json['publishAt'] as String,
      isPinned: json['isPinned'] as bool,
      isBookmarked: json['isBookmarked'] as bool,
    );

Map<String, dynamic> _$$NewsImplToJson(_$NewsImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'thumbnailUrl': instance.thumbnailUrl,
      'publisher': instance.publisher,
      'publishAt': instance.publishAt,
      'isPinned': instance.isPinned,
      'isBookmarked': instance.isBookmarked,
    };
