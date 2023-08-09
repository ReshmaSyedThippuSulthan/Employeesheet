import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class EmployeeShared {
  static Future<bool> savestring(String key, String value) async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    return pref.setString(key, value);
  }

  static Future<String> getstring(String key) async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    return pref.getString(key)??"";
  }

  static Future<bool> removestring(String key) async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    return pref.remove(key);
  }
}
