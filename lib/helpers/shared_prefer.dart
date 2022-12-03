import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefer {
  static SharedPreferences? shared;

  static Future init() async {
    shared = await SharedPreferences.getInstance();
  }

  static Future<void> setToken(String getToken) async {
    await shared?.setString('token', getToken);
  }

  static Future<String> getToken() async {
    String? token;
    token = shared?.getString('token');
    return token ?? '';
  }
}
