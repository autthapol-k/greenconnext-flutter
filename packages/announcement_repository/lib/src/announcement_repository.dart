import 'package:announcement_repository/src/models/get_news_list_input.dart';
import 'package:announcement_repository/src/models/models.dart';
import 'package:api_client/api_client.dart';

class AnnouncementRepository {
  AnnouncementRepository({required this.apiClient});

  final ApiClient apiClient;

  Future<List<News>?> getNewList({required GetNewsListInput input}) async {
    try {
      final response = await apiClient.get(
        '/client/v1/announcement/list?page=${input.page}&pageSize=${input.pageSize}',
        queryParameters: input.toJson(),
      );

      final List<dynamic> data = response.data['data'];
      return data.map((element) => News.fromJson(element)).toList();
    } catch (e, s) {
      throw AnnouncementException(e, s);
    }
  }
}
