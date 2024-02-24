import 'package:hive/hive.dart';
import 'package:srlm_app/utils/custom_print.dart';

abstract class DatabaseService {
  /// Open DataBase connection with the given key
  ///
  /// `returns` the same instance if it is already opened or instantiated.
  static Future<Box> openDb(String key) async {
    final box = await Hive.openBox(key);
    return box;
  }

  /// Fetch the data from the given box in database
  static Future<dynamic> getData(String key, Box box) async {
    try {
      final data = await box.get(key);
      return data;
    } catch (e) {
      return null;
    }
  }

  /// Opens the box using the `dbkey` and gets the data from the key `dataKey`.
  static Future<dynamic> getDataFromDb(
      {required String dataKey, required String dbKey}) async {
    try {
      final box = await Hive.openBox(dbKey);
      final data = await box.get(dataKey);
      return data;
    } catch (e) {
      return null;
    }
  }

  /// Inserts the data at the given box in database

  static Future<void> putData(
      {required String key, required Box box, dynamic data}) async {
    try {
      await box.put(key, data);
    } catch (e) {
      printErr(e);
    }
  }

  /// Opens the box using the `dbkey` and inserts the data at the key `dataKey`.
  static Future<void> putDataIntoDb(
      {required String dataKey,
      required String dbKey,
      required dynamic data}) async {
    try {
      final box = await Hive.openBox(dbKey);
      await box.put(dataKey, data);
    } catch (e) {
      printErr(e);
    }
  }
}
