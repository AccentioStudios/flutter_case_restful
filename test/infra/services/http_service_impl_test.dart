import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:restful/core/exceptions/exeption.dart';
import 'package:restful/domain/services/http_service.dart';
import 'package:restful/infra/services/http_service_impl.dart';

void main() {
  final IHttpService service = HttpServiceImpl(host: 'https://dog.ceo', dio: Dio());

  test('test sucesso service.get deve retornar (ServerException null, Response response)', () async {
    final response = await service.get('/api/breeds/image/random');
    expect(response.$1, null);
    expect(response.$2, isA<Response>());
  });

  test('test error service.get deve retornar (ServerException,  Response null)', () async {
    final response = await service.get('/api/breeds/image/random1');
    expect(response.$1, isA<ServerException>());
    expect(response.$2, null);
  });
}