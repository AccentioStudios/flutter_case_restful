import 'package:flutter/foundation.dart';

abstract class Failure implements Exception {
  final String errorDescription;

  Failure({
    Type?   runtimeType, 
    StackTrace? stackTrace,
    String? label,
    dynamic exception, 
    this.errorDescription = '',
  }) {
    if (kDebugMode) {
      if (stackTrace != null) {
        debugPrintStack(stackTrace: stackTrace);
      }
    }
  }
}

class UnknownError extends Failure {
  final dynamic exception;
  final StackTrace? stackTrace;
  final String? label;

  UnknownError({
    this.label,
    this.exception,
    this.stackTrace,
    super.errorDescription = 'Erro desconhecido',
  }) : super(stackTrace: stackTrace, label: label, exception: exception);
}

class ServerException implements Exception {}

class DataPersistenceException implements Exception {}
class TypeErrorException implements Exception {}


