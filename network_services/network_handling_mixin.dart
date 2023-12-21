import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:insta_digin/constants/app_strings.dart';
import 'package:insta_digin/utils/custom_print.dart';
import 'package:insta_digin/utils/snackbar.dart';

mixin NetworkHandlingMixin {
  Future<void> handleErrorResponse(
    DioError error,
    ErrorInterceptorHandler handler,
  ) async {
    final int? statusCode = error.response!.statusCode;

    switch (statusCode) {
      case 400:
        snackBar(AppStrings.badRequest);
        break;

      case 401:
        snackBar(AppStrings.anErrorOccured);
        await handleUnauthorised();
        break;

      case 403:
        snackBar(AppStrings.forbidden);
        await handleUnauthorised();
        break;

      case 404:
        snackBar(AppStrings.pageNotFound);
        break;

      case 405:
        snackBar(AppStrings.methodNotAllowed);
        break;

      case 408:
        snackBar(AppStrings.requestTimeout);
        break;

      case 500:
        snackBar(AppStrings.internalServerError);
        break;

      case 502:
        snackBar(AppStrings.badGateway);
        break;

      case 503:
        snackBar(AppStrings.serviceUnavailable);
        break;

      case 504:
        snackBar(AppStrings.gatewayTimeout);
        break;

      default:
        snackBar(AppStrings.somethingWentWrong);
    }
  }

  Future<void> handleUnauthorised() async {
    // TODO: handle unauthorisation here
    // await SharedPreference.clearAllData();
    // AppRouting().routeTo(NamedRoutes.login);
  }

  void printResponse(Response<dynamic> response) {
    if (kDebugMode) {
      print(
        "*************************************** Response *************************************** ",
      );

      // Print the URI
      printWarning('Request URL: ${response.realUri}');

      // Print the response status code
      printWarning('Status Code: ${response.statusCode}');

      // Print the response data
      printWarning('Response Data: ${response.data}');
    }
  }

  void printRequest(RequestOptions options) {
    if (kDebugMode) {
      print(
        "*************************************** Request *************************************** ",
      );

      // Print the request method (GET, POST, etc.)
      printWarning('Request Method: ${options.method}');

      // Print the request URL
      printWarning('Request URL: ${options.uri}');

      // Print the request data if it's available (e.g., for POST requests)
      if (options.data != null) {
        printWarning('Request Data: ${options.data}');
      }
    }
  }
}
