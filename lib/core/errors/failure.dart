import 'package:dio/dio.dart';

abstract class Failure {
  final String message;
  Failure({required this.message});
}

class ServerFailure extends Failure {
  ServerFailure({required super.message});

  /// From HTTP response
  factory ServerFailure.fromResponse(int statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      try {
        return ServerFailure(
          message:
              response?.data['error']['errors'][0] ?? "Unexpected Server Error",
        );
      } catch (e) {
        return ServerFailure(message: "Error parsing server message");
      }
    } else if (statusCode == 404) {
      return ServerFailure(message: "Request not found");
    } else if (statusCode == 500) {
      return ServerFailure(message: "Internal server error");
    } else {
      return ServerFailure(message: "Unexpected server error");
    }
  }

  /// From DioException
  factory ServerFailure.fromDioException(DioException dioException) {
    switch (dioException.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure(message: "Connection timeout");
      case DioExceptionType.sendTimeout:
        return ServerFailure(message: "Send timeout");
      case DioExceptionType.receiveTimeout:
        return ServerFailure(message: "Receive timeout");
      case DioExceptionType.badCertificate:
        return ServerFailure(message: "Bad certificate");
      case DioExceptionType.badResponse:
        return ServerFailure(
          message: ServerFailure.fromResponse(
            dioException.response?.statusCode ?? 0,
            dioException.response,
          ).message,
        );
      case DioExceptionType.cancel:
        return ServerFailure(message: "Request cancelled");
      case DioExceptionType.connectionError:
        return ServerFailure(message: "No internet connection");
      case DioExceptionType.unknown:
      // default:
        return ServerFailure(message: "Unexpected error");
    }
  }
}

class CacheFailure extends Failure {
  CacheFailure({required super.message});
}
