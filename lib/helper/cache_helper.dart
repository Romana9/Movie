import 'package:shared_preferences/shared_preferences.dart';

class CacheHelper {
  static late SharedPreferences _prefs;

  static Future<void> init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  static Future<void> saveCountNumber(int value) async {
    await _prefs.setInt("counter", value);
  }

  static int readCounter() {
    return _prefs.getInt("counter") ?? 0;
  }
}
