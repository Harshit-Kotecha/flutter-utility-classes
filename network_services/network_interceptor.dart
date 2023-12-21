import 'dart:io';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:insta_digin/global/connectivity_status.dart';
import 'package:insta_digin/services/network_handling_mixin.dart';
import 'package:insta_digin/storage/shared_preference.dart';

class NetworkInterceptor extends Interceptor with NetworkHandlingMixin {
  @override
  Future<dynamic> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    super.onRequest(options, handler);

    final connectivityResult = await Connectivity().checkConnectivity();
    ConnectivityStatus.setConnectivity(connectivityResult);

    if (ConnectivityStatus.connectivityResult == ConnectivityResult.none) {
      return DioError(
        requestOptions: RequestOptions(),
        error:
            'Something went wrong. Please check your internet connection or try again later.',
      );
    }

    final _token =
        await SharedPreference.getString(SharedPreference.savedToken);

    if (_token != null) {
      options.headers['Authorization'] = 'Bearer $_token';
    }

    if (kDebugMode) printRequest(options);

    return options;
  }

  @override
  Future<Response> onResponse(
    Response response,
    ResponseInterceptorHandler handler,
  ) async {
    super.onResponse(response, handler);

    if (kDebugMode) printResponse(response);

    // FIXME: Add log to file
    // final file = File('/home/auriga/Desktop/digin_app/log.txt');
    // await file.writeAsString(response.data.toString(), mode: FileMode.append);

    return response;
  }

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    super.onError(err, handler);

    if (kDebugMode) {
      printResponse(
        err.response ?? Response(requestOptions: err.requestOptions),
      );
    }

    handleErrorResponse(err, handler);
  }
}
