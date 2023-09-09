import 'package:dio/dio.dart';
import 'package:dio/src/response.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:restful/core/exceptions/exeption.dart';
import 'package:restful/core/utils/result.dart';
import 'package:restful/domain/services/http_service.dart';
import 'package:restful/external/datasource/dog_datasource_impl.dart';
import 'package:restful/infra/datasources/dog_datasource.dart';

class HttpServiceMocSuccess extends IHttpService {
  @override
  Future<Result<Exception, Response>> get(String url, ) async {
    Map<String, dynamic> dataMoc = {'message': 'deu certo'};
    final Response response = Response(requestOptions: RequestOptions(), data: dataMoc);
    return (null, response);
  }
}
class HttpServiceMocFailure extends IHttpService {
  @override
  Future<Result<Exception, Response>> get(String url, ) async {
    final Response response = Response(requestOptions: RequestOptions(),);
    return (null, response);
  }
}

void main() {
 

  test( 'test sucesso datasource.fetchDog deve retornar (null, Map<String, dynamic>)', () async { 
    final IDogDatasource datasource =
      DogDatasourceImpl(service: HttpServiceMocSuccess());
    final response = await datasource.fetchDog();
    expect(response.getFailure, null);
    expect(response.getSuccess?['message'], 'deu certo');
  });

  test('test error datasource.fetchDog() deve retornar (DataPersistenceException,   null)',() async {
      final IDogDatasource datasource =
      DogDatasourceImpl(service: HttpServiceMocFailure());
    final response = await datasource.fetchDog();
    expect(response.getFailure, isA<DataPersistenceException>());
    expect(response.getSuccess, null);
  });
}
