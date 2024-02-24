import 'package:get/get.dart';

class NavigationHandler {
  static navigateTo(
    String screenName,
  ) {
    Get.toNamed(screenName);
  }

  static navigateToWithParams(String screenName, dynamic arguments) {
    Get.toNamed(screenName, arguments: arguments);
  }

  static goBack() {
    Get.back<dynamic>();
  }

  static void offNamed(String page, {dynamic argument}) {
    Get.offNamed<dynamic>(page, arguments: argument);
  }

  static void offAndToNamed(String page, {dynamic argument}) {
    Get.offAndToNamed<dynamic>(page, arguments: argument);
  }

  static navigateToLogin() {
    Get.offAllNamed('/');
  }

  static replace(dynamic pageName, String screenName) {
    Get.off(pageName, routeName: screenName);
  }

  static removeAllNavigateTo(String screenName) {
    Get.offAllNamed(screenName);
  }

  static void goBackWithArguments({dynamic argument}) {
    Get.back<dynamic>( result: argument);
  }

}
