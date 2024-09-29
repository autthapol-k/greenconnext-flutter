import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_news_list_input.freezed.dart';

part 'get_news_list_input.g.dart';

@freezed
class GetNewsListInput with _$GetNewsListInput {
  const factory GetNewsListInput({
    required int page,
    required int pageSize,
    bool? isPinned,
    bool? isBookmark,
  }) = _GetNewsListInput;

  factory GetNewsListInput.fromJson(Map<String, dynamic> json) =>
      _$GetNewsListInputFromJson(json);
}
