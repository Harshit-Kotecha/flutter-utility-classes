TODO: New wrapper class for network calls

import 'package:dio/dio.dart';
import 'package:insta_digin/services/dio_client.dart';

class ApiBaseHelper {
  Future<dynamic> getHTTP(
    String url, {
    Map<String, dynamic>? queryParameters,
  }) async {
    try {
      final Response response =
          await DioClient.dio.get(url, queryParameters: queryParameters);
      return response.data;
    } on DioError catch (e) {
      return e;
    }
  }

  Future postHTTP(
    String url,
    dynamic data, {
    Map<String, dynamic>? queryParameters,
  }) async {
    // if (ConnectivityStatus.connectivityResult == null) {
    //   final connectivityResult = await Connectivity().checkConnectivity();
    //   ConnectivityStatus.setConnectivity(connectivityResult);
    // }
    // if (ConnectivityStatus.connectivityResult == ConnectivityResult.none) {
    //   return DioError(
    //     requestOptions: RequestOptions(),
    //     error:
    //         'Something went wrong. Please check your internet connection or try again later.',
    //   );
    // }
    try {
      final Response response = await DioClient.dio
          .post(url, data: data, queryParameters: queryParameters);
      //if (response.statusCode == 200) {
      return response;
      // } else {
      //   Future.error(response.statusMessage ?? 'Something went wrong');
      // }
    } on DioError catch (e) {
      return e;
      // Handle error
    }
  }

  Future putHTTP(String url, dynamic data) async {
    // if (ConnectivityStatus.connectivityResult == null) {
    //   final connectivityResult = await Connectivity().checkConnectivity();
    //   ConnectivityStatus.setConnectivity(connectivityResult);
    // }
    // if (ConnectivityStatus.connectivityResult == ConnectivityResult.none) {
    //   return DioError(
    //     requestOptions: RequestOptions(),
    //     error:
    //         'Something went wrong. Please check your internet connection or try again later.',
    //   );
    // }
    try {
      final Response response = await DioClient.dio.put(url, data: data);
      return response;
    } on DioError catch (e) {
      // Handle error
      return e;
    }
  }

  Future downloadFile<T>(
    String url,
    Map<String, dynamic> data,
  ) async {
    // if (ConnectivityStatus.connectivityResult == null) {
    //   final connectivityResult = await Connectivity().checkConnectivity();
    //   ConnectivityStatus.setConnectivity(connectivityResult);
    // }
    // if (ConnectivityStatus.connectivityResult == ConnectivityResult.none) {
    //   return DioError(
    //     requestOptions: RequestOptions(),
    //     error:
    //         'Something went wrong. Please check your internet connection or try again later.',
    //   );
    // }
    try {
      final dio = Dio();
      Response<T> response = await dio.post<T>(
        url,
        data: data,
        options: Options(
          responseType: ResponseType.bytes,
          followRedirects: false,
        ),
      );
      if (response.statusCode == 200) {
        return response;
      } else {
        Future.error('Woops Something went wrong');
      }
    } catch (err) {
      return err;
    }
  }

  Future deleteHTTP(String url) async {
    // if (ConnectivityStatus.connectivityResult == null) {
    //   final connectivityResult = await Connectivity().checkConnectivity();
    //   ConnectivityStatus.setConnectivity(connectivityResult);
    // }
    // if (ConnectivityStatus.connectivityResult == ConnectivityResult.none) {
    //   return DioError(
    //     requestOptions: RequestOptions(),
    //     error:
    //         'Something went wrong. Please check your internet connection or try again later.',
    //   );
    // }
    try {
      final Response response = await DioClient.dio.delete(url);
      if (response.statusCode == 200) {
        return response;
      } else {
        Future.error('Woops Something went wrong');
      }
    } on DioError catch (e) {
      // Handle error
      return e;
    }
  }
}
