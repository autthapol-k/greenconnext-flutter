import 'package:dio/dio.dart';
import 'package:dio/io.dart';
import 'package:ua_client_hints/ua_client_hints.dart';
import 'package:user_credential_api/user_credential_api.dart';

class ApiClient with DioMixin implements Dio {
  ApiClient({
    required String baseUrl,
    required String apiKey,
    required UserCredentialApi userCredentialApi,
    BaseOptions? option,
  }) {
    option = BaseOptions(
      baseUrl: baseUrl,
      contentType: 'application/json',
      connectTimeout: Duration(seconds: 30),
      sendTimeout: Duration(seconds: 30),
      receiveTimeout: Duration(seconds: 30),
      headers: {
        'x-api-key': apiKey,
      },
    );

    options = option;
    interceptors.add(InterceptorsWrapper(onRequest: (option, handler) async {
      options.headers.addAll(await userAgentClientHintsHeader());

      // attach access token
      final sessionToken = await userCredentialApi.getSessionToken();
      if (sessionToken != null) {
        option.headers.addAll({
          'Authorization': 'Bearer ${sessionToken.accessToken}',
        });
      }
      handler.next(option);
    }));

    httpClientAdapter = IOHttpClientAdapter();
  }
}
