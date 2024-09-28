import 'package:dio/dio.dart';
import 'package:dio/io.dart';
import 'package:ua_client_hints/ua_client_hints.dart';

class ApiClient with DioMixin implements Dio {
  ApiClient({required String baseUrl, BaseOptions? option}) {
    option = BaseOptions(
        baseUrl: baseUrl,
        contentType: 'application/json',
        connectTimeout: Duration(seconds: 30),
        sendTimeout: Duration(seconds: 30),
        receiveTimeout: Duration(seconds: 30));

    options = option;
    interceptors.add(InterceptorsWrapper(onRequest: (option, handler) async {
      options.headers.addAll(await userAgentClientHintsHeader());
      handler.next(option);
    }));

    httpClientAdapter = IOHttpClientAdapter();
  }
}
