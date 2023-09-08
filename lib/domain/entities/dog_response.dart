import 'package:freezed_annotation/freezed_annotation.dart';

part 'dog_response.freezed.dart';
part 'dog_response.g.dart';

@freezed
class DogResponse with _$DogResponse {
  const factory DogResponse({
    required String message,
    required String status,
  }) = _DogResponse;

  factory DogResponse.fromJson(Map<String, dynamic> json) =>
      _$DogResponseFromJson(json);
}
