import '../../domain/repositories/dog_repository.dart';
import '../datasources/dog_datasource.dart';

class DogRepositoryImpl implements IDogRepository {
  final IDogDatasource datasource;
  DogRepositoryImpl(this.datasource);

  @override
  Future<String> fetchDog() async {
    return await datasource.fetchDog();
  }
}
