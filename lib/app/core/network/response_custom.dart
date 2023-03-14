abstract class IResponseCustom {
  int? get statusCode;
  dynamic get body;
  Map<String, dynamic>? get headers;
}

class ResponseCustom implements IResponseCustom {
  @override
  final int? statusCode;
  @override
  final dynamic body;
  @override
  final Map<String, dynamic>? headers;

  ResponseCustom({
    this.statusCode,
    this.body,
    this.headers,
  });
}
