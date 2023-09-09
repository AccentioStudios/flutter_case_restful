import 'package:restful/domain/entities/dog_picture.dart';
import '../../core/exceptions/exeption.dart';
import '../../core/utils/result.dart';
import '../../domain/repositories/dog_repository.dart';
import '../datasources/dog_datasource.dart';

class DogRepositoryImpl implements IDogRepository {
  final IDogDatasource datasource;
  DogRepositoryImpl(this.datasource);

  @override
  Future<Result<Exception, DogPicture>> fetchDog() async {
    final (exception, response) = await datasource.fetchDog();

    if (exception != null) {
      return (exception, null);
    }

    if (response == null) {
      return (DataPersistenceException(), null);
    }

    try {
      return (null, DogPicture.fromMap(response));
    } on TypeError {
      return (TypeErrorException(), null);
    }
  }
}
