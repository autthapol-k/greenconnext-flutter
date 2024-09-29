import 'package:freezed_annotation/freezed_annotation.dart';

part 'news.freezed.dart';

part 'news.g.dart';

@freezed
class News with _$News {
  const factory News({
    required String id,
    required String title,
    required String thumbnailUrl,
    required String publisher,
    required String publishAt,
    required bool isPinned,
    required bool isBookmarked,
  }) = _News;

  factory News.fromJson(Map<String, dynamic> json) => _$NewsFromJson(json);
}
