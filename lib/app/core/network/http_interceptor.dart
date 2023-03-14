import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

class HttpInterceptor implements InterceptorsWrapper {
  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    debugPrint("Http Interceptor Error: ${err.message} path: ${err.requestOptions.path}");
    handler.next(err);
  }

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    debugPrint("Http Interceptor Request: ${options.method} path: ${options.path}");
    handler.next(options);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    debugPrint(
        "Http Interceptor Response: ${response.statusCode} path: ${response.requestOptions.path}");
    handler.next(response);
  }
}
