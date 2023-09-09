import 'package:flutter_test/flutter_test.dart';
import 'package:restful/core/exceptions/exeption.dart';
import 'package:restful/core/utils/result.dart';
import 'package:restful/domain/entities/dog_picture.dart';
import 'package:restful/domain/repositories/dog_repository.dart';
import 'package:restful/infra/datasources/dog_datasource.dart';
import 'package:restful/infra/repositories/dog_repository_impl.dart';


class DogDatasourceMocSuccess extends IDogDatasource {
  @override
  Future<Result<Exception, Map<String, dynamic>>> fetchDog() async {
    
    Map<String, dynamic> dataMoc = {'message': 'deu certo'};
    return(null ,dataMoc);
  }
  
}
class DogDatasourceMocFailure extends IDogDatasource {
  @override
  Future<Result<Exception, Map<String, dynamic>>> fetchDog() async {
    
    Map<String, dynamic> dataMoc = {'message': 1};
    return(null ,dataMoc);
  }
  
}
void main() {
  

  test('test sucesso service.get deve retornar ( null,  DogPicture)', () async {
    final IDogRepository repository = DogRepositoryImpl(DogDatasourceMocSuccess());
    final response = await repository.fetchDog();
    expect(response.getSuccess, isA<DogPicture>());
    expect(response.getFailure, null);
    
  });

  test('test error repository.fetchDog deve retornar (TypeErrorException,  null)', () async {
    final IDogRepository repository = DogRepositoryImpl(DogDatasourceMocFailure());
    final response = await repository.fetchDog();
    expect(response.$1, isA<TypeErrorException>());
    expect(response.$2, null);
  });
}