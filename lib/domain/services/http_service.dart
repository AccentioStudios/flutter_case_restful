import 'package:dio/dio.dart';
import 'package:restful/core/utils/result.dart';
abstract class IHttpService {
  Future<Result<Exception, Response>> get(String url);
}
