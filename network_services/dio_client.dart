import 'package:dio/dio.dart';
import 'package:insta_digin/api/api_endpoints.dart';
import 'package:insta_digin/services/network_interceptor.dart';
import 'package:insta_digin/storage/shared_preference.dart';

class DioClient {
  DioClient._();

  static Dio? _dio;
  static Dio? _newDio;

  static Dio get dio {
    if (_dio == null) {
      initWithAuth();
    }
    return _dio!;
  }

  static Future<void> initWithAuth() async {
    _dio = createDio();

    // _dio!.options.headers = await getHeaders();
    _dio!.interceptors.add(NetworkInterceptor());
  }

  static Future<Map<String, String>> getHeaders() async {
    final _token =
        await SharedPreference.getString(SharedPreference.savedToken);
    return {
      "Authorization": "Bearer $_token",
    };
  }

  static Dio get newDio {
    if (_newDio == null) {
      initNewDio();
    }
    return _newDio!;
  }

  static BaseOptions? _options;
  static BaseOptions? get options => _options;

  static Dio createDio() {
    // TODO:  Fetch dynamic url
    initBaseOption(ApiEndpoints.baseUrl);
    final _dio = Dio(options);
    return _dio;
  }

  static void initBaseOption(String? baseUrl) {
    _options = BaseOptions(
      baseUrl: baseUrl ?? ApiEndpoints.baseUrl,
      // validateStatus: (status) => true,
      connectTimeout: const Duration(seconds: 30),
      receiveTimeout: const Duration(seconds: 30),
      sendTimeout: const Duration(seconds: 30),
      receiveDataWhenStatusError: true,
      contentType: Headers.jsonContentType,
    );
  }

  static void initNewDio() {
    _newDio = Dio();
    _newDio!.interceptors.add(NetworkInterceptor());
  }
}
