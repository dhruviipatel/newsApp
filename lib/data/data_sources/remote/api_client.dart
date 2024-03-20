import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'api_constant.dart';
import 'api_exception.dart';

class ApiClient {
  late Dio dio;
  late BaseOptions baseOptions;

  ApiClient() {
    baseOptions = BaseOptions(baseUrl: ApiConstant.mainUrl);

    dio = Dio(baseOptions);
  }

  Future<Response> getRequest({required String path}) async {
    try {
      var response = await dio.get(path);
      debugPrint(response.statusCode.toString());
      log('Data : ${response.data}');
      return response;
    } on DioException catch (e) {
      if (e.response != null) {
        debugPrint(e.response!.data);
        debugPrint(e.response!.headers.toString());
        debugPrint(e.response!.requestOptions.toString());
        throw ApiException(message: e.response!.statusMessage);
      } else {
        debugPrint(e.requestOptions.toString());
        debugPrint(e.message);
        throw ApiException(message: e.message);
      }
    }
  }

  Future<Response> postRequest(
      {required String path, required dynamic body}) async {
    // Map body = {"title": "newtitle1", "slug": "newtitle1"};

    final options = Options(headers: {"Authorization": ""});
    try {
      var response = await dio.post(path, data: body, options: options);
      debugPrint(response.statusCode.toString());
      log('Data : ${response.data}');
      return response;
    } on DioException catch (e) {
      if (e.response != null) {
        debugPrint(e.response!.data.toString());
        debugPrint(e.response!.headers.toString());
        debugPrint(e.response!.requestOptions.toString());
        throw ApiException(message: e.response!.statusMessage);
      } else {
        debugPrint(e.requestOptions.toString());
        debugPrint(e.message);
        throw ApiException(message: e.message);
      }
    }
  }
}
