// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dio/dio.dart';

class ApiServices {
  final baseUrl = 'https://www.googleapis.com/books/v1/';
  final Dio dio;
  ApiServices(
    this.dio,
  );

  Future<Map<String, dynamic>> getData({required String endPoint}) async {
    var response = await dio.get('$baseUrl$endPoint');
    return response.data;
  }
}
