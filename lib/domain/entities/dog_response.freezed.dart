// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dog_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DogResponse _$DogResponseFromJson(Map<String, dynamic> json) {
  return _DogResponse.fromJson(json);
}

/// @nodoc
mixin _$DogResponse {
  String get message => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DogResponseCopyWith<DogResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DogResponseCopyWith<$Res> {
  factory $DogResponseCopyWith(
          DogResponse value, $Res Function(DogResponse) then) =
      _$DogResponseCopyWithImpl<$Res, DogResponse>;
  @useResult
  $Res call({String message, String status});
}

/// @nodoc
class _$DogResponseCopyWithImpl<$Res, $Val extends DogResponse>
    implements $DogResponseCopyWith<$Res> {
  _$DogResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DogResponseCopyWith<$Res>
    implements $DogResponseCopyWith<$Res> {
  factory _$$_DogResponseCopyWith(
          _$_DogResponse value, $Res Function(_$_DogResponse) then) =
      __$$_DogResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, String status});
}

/// @nodoc
class __$$_DogResponseCopyWithImpl<$Res>
    extends _$DogResponseCopyWithImpl<$Res, _$_DogResponse>
    implements _$$_DogResponseCopyWith<$Res> {
  __$$_DogResponseCopyWithImpl(
      _$_DogResponse _value, $Res Function(_$_DogResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? status = null,
  }) {
    return _then(_$_DogResponse(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DogResponse implements _DogResponse {
  const _$_DogResponse({required this.message, required this.status});

  factory _$_DogResponse.fromJson(Map<String, dynamic> json) =>
      _$$_DogResponseFromJson(json);

  @override
  final String message;
  @override
  final String status;

  @override
  String toString() {
    return 'DogResponse(message: $message, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DogResponse &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DogResponseCopyWith<_$_DogResponse> get copyWith =>
      __$$_DogResponseCopyWithImpl<_$_DogResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DogResponseToJson(
      this,
    );
  }
}

abstract class _DogResponse implements DogResponse {
  const factory _DogResponse(
      {required final String message,
      required final String status}) = _$_DogResponse;

  factory _DogResponse.fromJson(Map<String, dynamic> json) =
      _$_DogResponse.fromJson;

  @override
  String get message;
  @override
  String get status;
  @override
  @JsonKey(ignore: true)
  _$$_DogResponseCopyWith<_$_DogResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
