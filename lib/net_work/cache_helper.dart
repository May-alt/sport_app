import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CacheHelper {
  static late SharedPreferences sharedPreferences;

  static init() async {
    return sharedPreferences = await SharedPreferences.getInstance();
  }

//save data in SharedPr
  static Future<bool> saveData(
      {required String key, required dynamic value}) async {
    if (value is bool) return await sharedPreferences.setBool(key, value);
    if (value is String) return await sharedPreferences.setString(key, value);
    if (value is double) return await sharedPreferences.setDouble(key, value);
    return await sharedPreferences.setInt(key, value);
  }

//get data

  static getData({required key}) {
    return sharedPreferences.get(key);
  }

  static removeData({required key}) {
    return sharedPreferences.remove(key);
  }
}
