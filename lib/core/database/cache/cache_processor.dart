import 'package:shared_preferences/shared_preferences.dart';

class CacheProcessor {
  static late SharedPreferences sharedPreferences;

// Initializing the cache .
  init() async {
    sharedPreferences = await SharedPreferences.getInstance();
  }

// Saving boolean
  Future<bool> saveBool({required String key, required bool data}) async {
    return await sharedPreferences.setBool(key, data);
  }

  // Get boolean
  dynamic getBoolData({required String key}) {
    return sharedPreferences.get(key);
  }
}
