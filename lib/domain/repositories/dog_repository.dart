import 'package:restful/domain/entities/dog_picture.dart';
import '../../core/utils/result.dart';

abstract class IDogRepository {
  Future<Result<Exception, DogPicture>> fetchDog();
}
