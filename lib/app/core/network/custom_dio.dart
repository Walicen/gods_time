import 'package:dio/dio.dart';

import 'http_interceptor.dart';

class CustomDio extends DioMixin implements Dio {
  CustomDio(String baseUrl) {
    options.baseUrl = baseUrl;
    interceptors.add(HttpInterceptor());
  }
}
