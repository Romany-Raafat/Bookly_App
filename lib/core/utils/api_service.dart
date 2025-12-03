import 'package:dio/dio.dart';

class ApiService {
  late Dio dio;
  ApiService() {
    dio = Dio(
      BaseOptions(
        baseUrl: 'https://www.googleapis.com/books/v1/',
        connectTimeout: const Duration(seconds: 5),
        receiveTimeout: const Duration(seconds: 5),
        headers: {'Accept': 'application/json'},
      ),
    );
  }
  Future<Map<String, dynamic>> get({required String endpoint}) async {
    var response = await dio.get(endpoint);
    return response.data;
  }
}
