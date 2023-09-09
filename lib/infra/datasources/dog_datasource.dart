import '../../core/utils/result.dart';

abstract class IDogDatasource {
  Future<Result<Exception,Map<String,dynamic>>> fetchDog();
}
