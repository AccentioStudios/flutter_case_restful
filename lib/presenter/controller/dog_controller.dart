

import 'package:flutter/foundation.dart';
import 'package:restful/core/utils/result.dart';
import 'package:restful/domain/repositories/dog_repository.dart';

class DogController {
  final IDogRepository repository;
  DogController({
    required this.repository,
  });

  ValueNotifier<String> res = ValueNotifier('');

    
  Future loadDog({required Function aletrErro}) async {
    final response = await repository.fetchDog();
    response.fold(
      success: (success) {
        res.value = success.pictureUrl;
      },
      failure: (p0) => aletrErro(),
    );
  }
}
