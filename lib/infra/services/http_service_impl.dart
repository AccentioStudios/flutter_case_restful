import 'package:dio/dio.dart';
import 'package:restful/core/exceptions/exeption.dart';
import 'package:restful/domain/services/http_service.dart';
import '../../core/utils/result.dart';

class HttpServiceImpl implements IHttpService {
  final String host;
  final Dio dio;
  HttpServiceImpl({
    required this.host,
    required this.dio,
  });

  @override
  Future<Result<Exception, Response>> get(String url) async {
    try {
      var response = await dio.get('$host$url');
      return (null, response);
    } on DioException {
      return (ServerException(), null);
    }
  }
}