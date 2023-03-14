import 'package:dio/dio.dart';

import 'custom_dio.dart';
import 'response_custom.dart';

abstract class IHttpClient {
  Future<IResponseCustom> get(String url, {Map<String, String>? headers});
  Future<IResponseCustom> post(String url, {Map<String, String>? headers, dynamic body});
  Future<IResponseCustom> patch(String url, {Map<String, String>? headers, dynamic body});
  Future<IResponseCustom> put(String url, {Map<String, String>? headers, dynamic body});
  Future<IResponseCustom> delete(String url, {Map<String, String>? headers});
}

class HttpClient implements IHttpClient {
  final CustomDio _customDio;

  HttpClient(this._customDio);

  @override
  Future<IResponseCustom> get(String url, {Map<String, String>? headers}) async {
    return _customDio.get(url, options: Options(headers: headers)).then((value) {
      return ResponseCustom(
        statusCode: value.statusCode,
        body: value.data,
        headers: value.headers.map,
      );
    }).catchError((error) {
      return ResponseCustom(
        statusCode: error.response.statusCode,
        body: error.response.data,
        headers: error.response.headers.map,
      );
    });
  }

  @override
  Future<IResponseCustom> post(String url, {Map<String, String>? headers, body}) {
    return _customDio.post(url, data: body, options: Options(headers: headers)).then((value) {
      return ResponseCustom(
        statusCode: value.statusCode,
        body: value.data,
        headers: value.headers.map,
      );
    }).catchError((error) {
      return ResponseCustom(
        statusCode: error.response.statusCode,
        body: error.response.data,
        headers: error.response.headers.map,
      );
    });
  }

  @override
  Future<IResponseCustom> patch(String url, {Map<String, String>? headers, body}) {
    return _customDio.patch(url, data: body, options: Options(headers: headers)).then((value) {
      return ResponseCustom(
        statusCode: value.statusCode,
        body: value.data,
        headers: value.headers.map,
      );
    }).catchError((error) {
      return ResponseCustom(
        statusCode: error.response.statusCode,
        body: error.response.data,
        headers: error.response.headers.map,
      );
    });
  }

  @override
  Future<IResponseCustom> put(String url, {Map<String, String>? headers, body}) {
    return _customDio.put(url, data: body, options: Options(headers: headers)).then((value) {
      return ResponseCustom(
        statusCode: value.statusCode,
        body: value.data,
        headers: value.headers.map,
      );
    }).catchError((error) {
      return ResponseCustom(
        statusCode: error.response.statusCode,
        body: error.response.data,
        headers: error.response.headers.map,
      );
    });
  }

  @override
  Future<IResponseCustom> delete(String url, {Map<String, String>? headers}) {
    return _customDio.delete(url, options: Options(headers: headers)).then((value) {
      return ResponseCustom(
        statusCode: value.statusCode,
        body: value.data,
        headers: value.headers.map,
      );
    }).catchError((error) {
      return ResponseCustom(
        statusCode: error.response.statusCode,
        body: error.response.data,
        headers: error.response.headers.map,
      );
    });
  }
}
