import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:dio_cache_interceptor/dio_cache_interceptor.dart';
import 'package:get/get.dart' as getx;
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import '/app/core/services/local_db_services/local_db_services.dart';

class APIService extends getx.GetxService {
  var _dio;
  var _dioCacheOption;

  final serviceLocalDb = getx.Get.find<LocalDBService>();

  static final String liveUrl = 'http://emapi01.awfatech.com';

  static final String devUrl = 'http://emapi01.awfatech.com';

  static final String url = devUrl;

  APIService() {
    BaseOptions options = BaseOptions(
        receiveTimeout: const Duration(milliseconds: 20000),
        connectTimeout: const Duration(milliseconds: 20000));
    _dio = Dio(options);

    _dioCacheOption = CacheOptions(
      store: MemCacheStore(maxSize: 10485760, maxEntrySize: 1048576),
      policy: CachePolicy.forceCache,
      hitCacheOnErrorExcept: [401, 403],
      maxStale: const Duration(days: 7),
      priority: CachePriority.normal,
      cipher: null,
      keyBuilder: CacheOptions.defaultCacheKeyBuilder,
      allowPostMethod: false,
    );

    // LOG HERE
    _dio.interceptors.add(PrettyDioLogger());
  }

  Future<dynamic> getTwoKey({String? endpoint, String? fullUrl}) async {
    Response response;
    try {
      response =
          await _dio.get((fullUrl == null) ? (url + (endpoint ?? "")) : fullUrl,
              options: Options(
                headers: {
                  "authorization": "Bearer ${serviceLocalDb.getToken()}",
                  "x-encrypted-key": serviceLocalDb.getTokenEK(),
                  "x-encrypted-user": serviceLocalDb.getTokenEU(),
                },
              ));
      return response;
    } on DioExceptionType catch (error) {
      String er = _handleError(error);
      log(er);
      throw Exception(er);
    }
  }

  Future<dynamic> get({String? endpoint, String? fullUrl}) async {
    Response response;
    try {
      response =
          await _dio.get((fullUrl == null) ? (url + (endpoint ?? "")) : fullUrl,
              options: Options(
                headers: {
                  "x-encrypted-key": serviceLocalDb.getTokenEK(),
                },
              ));
      return response;
    } on DioExceptionType catch (error) {
      String er = _handleError(error);
      log(er);
      throw Exception(er);
    }
  }

  Future<dynamic> delete({String? endpoint, String? fullUrl}) async {
    Response response;
    try {
      response = await _dio.delete(
          (fullUrl == null) ? (url + (endpoint ?? "")) : fullUrl,
          options: Options(
            headers: {
              "authorization": "Bearer " + serviceLocalDb.getToken(),
            },
          ));
      return response;
    } on DioExceptionType catch (error) {
      String er = _handleError(error);
      log(er);
      throw Exception(er);
    }
  }

  Future post(String endpoint, var body) async {
    try {
      Response response = await _dio.post(url + endpoint,
          data: body,
          options: Options(
            headers: {
              "x-encrypted-key": serviceLocalDb.getTokenEK(),
            },
          ));
      return response;
    } on DioExceptionType catch (error) {
      String er = _handleError(error);
      log(er);
      throw Exception(er);
    }
  }

  Future postOldLink(String endpoint, var body) async {
    try {
      Response response = await _dio.post(endpoint,
          data: body,
          options: Options(
            headers: {},
          ));
      return response;
    } on DioExceptionType catch (error) {
      String er = _handleError(error);
      log(er);
      throw Exception(er);
    }
  }

  Future postThreeKey(String endpoint, var body) async {
    print('xxxxx ${serviceLocalDb.getTokenEU()}');
    try {
      Response response = await _dio.post(url + endpoint,
          data: body,
          options: Options(
            headers: {
              "authorization": "Bearer ${serviceLocalDb.getToken()}",
              "x-encrypted-key": serviceLocalDb.getTokenEK(),
              "x-encrypted-user": serviceLocalDb.getTokenEU(),
            },
          ));
      return response;
    } on DioExceptionType catch (error) {
      String er = _handleError(error);
      log(er);
      throw Exception(er);
    }
  }

  Future putThreeKey(String endpoint, var body) async {
    try {
      Response response = await _dio.put(url + endpoint,
          data: body,
          options: Options(
            headers: {
              "authorization": "Bearer ${serviceLocalDb.getToken()}",
              "x-encrypted-key": serviceLocalDb.getTokenEK(),
              "x-encrypted-user": serviceLocalDb.getTokenEU(),
            },
          ));
      return response;
    } on DioExceptionType catch (error) {
      String er = _handleError(error);
      log(er);
      throw Exception(er);
    }
  }

  Future put(String endpoint, var body) async {
    try {
      Response response = await _dio.put(url + endpoint,
          data: body,
          options: Options(
            headers: {
              "authorization": "Bearer " + serviceLocalDb.getToken(),
            },
          ));
      return response;
    } on DioExceptionType catch (error) {
      String er = _handleError(error);
      log(er);
      throw Exception(er);
    }
  }

  String _handleError(DioExceptionType error) {
    String errorDescription = "";
    // ignore: unnecessary_type_check
    if (error is DioExceptionType) {
      switch (error) {
        case DioExceptionType.cancel:
          errorDescription = "Request to API server was cancelled";
          break;
        case DioExceptionType.connectionTimeout:
          errorDescription = "Connection timeout with API server";
          break;
        case DioExceptionType.badCertificate:
          errorDescription =
              "Connection to API server failed due to internet connection";
          break;
        case DioExceptionType.receiveTimeout:
          errorDescription = "Receive timeout in connection with API server";
          break;
        case DioExceptionType.badResponse:
          errorDescription = "Bad connection larhhh";
          break;
        case DioExceptionType.sendTimeout:
          errorDescription = "Send timeout in connection with API server";
          break;
        case DioExceptionType.unknown:
          errorDescription = "Connection unknown error";
          break;
        case DioExceptionType.connectionError:
          errorDescription = "Connection timeout with API server";
          break;
      }
    } else {
      errorDescription = "Unexpected error occured";
    }
    return errorDescription;
  }
}
