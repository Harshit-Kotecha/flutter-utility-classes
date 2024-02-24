import 'dart:io';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:get/get.dart';
import 'package:srlm_app/global/connectivity_status.dart';
import 'package:srlm_app/utils/custom_print.dart';

class BaseController extends GetxController {
  RxBool hasInternet = RxBool(false);
  RxBool isLoading = RxBool(false);
  @override
  void onInit() {
    handleInternetConnectivity();
    super.onInit();
  }

  Future<void> handleInternetConnectivity() async {
    try {
      await checkInternetStream().forEach((data) {
        if (hasInternet.value != data) {
          hasInternet.value = data;
          if (data) {
            printWarning('connected');
          } else {
            printWarning('not connected');
          }
        }
      });
    } catch (e) {
      // No internet
      hasInternet.value = false;
    }
  }

  Stream<bool> checkInternetStream() async* {
    List<InternetAddress> result;

    while (true) {
      try {
        if (ConnectivityStatus.connectivityResult == null ||
            ConnectivityStatus.connectivityResult == ConnectivityResult.none) {
          final connectivityResult = await Connectivity().checkConnectivity();
          ConnectivityStatus.setConnectivity(connectivityResult);
        }
        if (ConnectivityStatus.connectivityResult == ConnectivityResult.none) {
          yield false;
          continue;
        }
        result = await InternetAddress.lookup('google.com');

        if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
          yield true;
          await Future.delayed(const Duration(milliseconds: 500));
        } else {
          yield false;
        }
      } on SocketException catch (_) {
        yield false;
        await Future.delayed(const Duration(milliseconds: 500));
      } catch (e) {
        yield false;
        await Future.delayed(const Duration(milliseconds: 500));
      }
    }
  }
}
