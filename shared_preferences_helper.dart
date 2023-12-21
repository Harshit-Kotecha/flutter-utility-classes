import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesHelper {
  SharedPreferencesHelper._();

  static Future<void> setString(String key, String value) async {
    final SharedPreferences instance = await SharedPreferences.getInstance();
    await instance.setString(key, value);
    return;
  }

  static Future<void> removeString(String key) async {
    final SharedPreferences instance = await SharedPreferences.getInstance();
    instance.remove(key);
  }

  static Future<String?> getString(String key) async {
    final SharedPreferences instance = await SharedPreferences.getInstance();
    return instance.getString(key);
  }

  static Future<void> setBoolean(String key, bool value) async {
    final SharedPreferences instance = await SharedPreferences.getInstance();
    instance.setBool(key, value);
  }

  static Future<bool?> getBoolean(String key) async {
    final SharedPreferences instance = await SharedPreferences.getInstance();
    return instance.getBool(key);
  }

  static Future<void> setInt(String key, int value) async {
    final SharedPreferences instance = await SharedPreferences.getInstance();
    instance.setInt(key, value);
  }

  static Future<int?> getInt(String key) async {
    final SharedPreferences instance = await SharedPreferences.getInstance();
    return instance.getInt(key);
  }

  static Future<void> clearAllData() async {
    final SharedPreferences instance = await SharedPreferences.getInstance();
    instance.clear();
  }

  static Future<void> clearSessionData() async {
    final SharedPreferences instance = await SharedPreferences.getInstance();
    // instance.clear();

    //instance.remove(savedToken);
    //..
  }
}
