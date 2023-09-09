import 'package:restful/core/exceptions/exeption.dart';
import 'package:restful/infra/datasources/dog_datasource.dart';
import '../../core/utils/result.dart';
import '../../domain/services/http_service.dart';

class DogDatasourceImpl implements IDogDatasource {
  final IHttpService service;
  DogDatasourceImpl({
    required this.service,
  });

  @override
  Future<Result<Exception, Map<String, dynamic>>> fetchDog() async {
    final (exception, response) = await service.get('/api/breeds/image/random');

    if (exception != null) {
      return (exception, null);
    }

    if (response?.data == null) {
      return (DataPersistenceException(), null);
    }

    return (exception, response?.data as Map<String, dynamic>);
  }
}
