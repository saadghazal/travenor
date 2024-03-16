import 'package:shared_preferences/shared_preferences.dart';

class StorageService {
  static late SharedPreferences prefs;
  static Future<void> init() async {
    prefs = await SharedPreferences.getInstance();
  }

  static Future<bool> isOnBoarding() async {
    final firstTimeToUseTheApp = prefs.getBool('isFirst');
    if (firstTimeToUseTheApp == null || firstTimeToUseTheApp) {
      await prefs.setBool('isFirst', true);
      return true;
    } else {
      return false;
    }
  }

  static Future<void> setNotFirstTime() async {
    await prefs.setBool('isFirst', false);
  }
}
