import 'package:shared_preferences/shared_preferences.dart';

class PrefHelper {
  late final SharedPreferences _pref;

  static PrefHelper instance = PrefHelper();

  Future<void> init() async {
    _pref = await SharedPreferences.getInstance();
  }

  Future<bool> saveToken(String token) async {
    return await _pref.setString("token", token);
  }

  String get token => _pref.getString("token") ?? "";

  Future<bool> setFirstInstall() async {
    return await _pref.setBool("isFirstInstall", false);
  }

  bool get isFirstInstall => _pref.getBool("isFirstInstall") ?? true;
}
