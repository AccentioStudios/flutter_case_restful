import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first

class DogPicture {
  final String pictureUrl;
  DogPicture({
    required this.pictureUrl,
  });

  factory DogPicture.fromMap(Map<String, dynamic> map) {
    return DogPicture(
      pictureUrl: map['message'] as String,
    );
  }

  factory DogPicture.fromJson(String source) => DogPicture.fromMap(json.decode(source) as Map<String, dynamic>);
}
