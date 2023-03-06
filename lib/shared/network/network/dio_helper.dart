import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class DioHelper {
  static Dio? dio;
  static init() {
    dio = Dio(
      BaseOptions(
        baseUrl: 'https://285c2dab-65fc-4671-a1c7-94de39a1d8c8.mock.pstmn.io',
        receiveDataWhenStatusError: true,
      ),
    );
  }

  static Future getData({
    @required String? url,
    Map<String, dynamic>? query,
    String? xApiKey =
        'PMAK-63e0dc4ab9b96b04d4c01780-e6982a414f5fe6418f69ca228297245821',
    // String? token,
  }) async {
    dio!.options.headers = {
      'Accept': 'application/json',
      'Content-Type': 'application/json',
      'x-api-key': xApiKey,
      // 'lang': lang,
      // 'Authorization': token,
    };

    return await dio!.get(url!, queryParameters: query);
  }

  static Future postData({
    @required String? url,
    Map<String, dynamic>? query,
    @required Map<String, dynamic>? data,
    String lang = 'en',
    String? token,
  }) async {
    dio?.options.headers = {
      'Content-Type': 'application/json',
      'lang': lang,
      'Authorization': token,
    };
    return await dio?.post(url!, queryParameters: query, data: data);
  }

  static Future putData({
    @required String? url,
    Map<String, dynamic>? query,
    @required Map<String, dynamic>? data,
    String lang = 'en',
    String? token,
  }) async {
    dio?.options.headers = {
      'Content-Type': 'application/json',
      'lang': lang,
      'Authorization': token,
    };
    return await dio?.put(url!, queryParameters: query, data: data);
  }
}
