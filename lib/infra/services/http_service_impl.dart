import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:restful/domain/services/http_service.dart';

class HttpServiceImpl implements IHttpService {
  final String host;
  HttpServiceImpl(this.host);
  var client = Dio();

  @override
  Future<String> get(String path) async {
    final request = await client.get(host + path);
    return jsonEncode(request.data);
  }
}
