import 'package:dio/dio.dart';

class DioHelper {
  static Dio? dio;

  static init() {
    dio = Dio(
      BaseOptions(
        baseUrl: 'https://www.googleapis.com/books/v1/',
        receiveDataWhenStatusError: true,
      ),

    );
  }

  static Future<Response> getData(
      {required String url}) async {
    return await dio!.get(url);
  }

  static Future<Response> postData({
    required String url,
    Map<String, dynamic>? query,
    Map<String, dynamic>? body,
  }) async {
    dio!.options.headers = {
      'Content-Type': 'application/json',
      'MyToken': '124FEENGLF5PSHX1SL0HC10CDLHVVX'
    };
    return await dio!.post(url, data: body);
  }
}

