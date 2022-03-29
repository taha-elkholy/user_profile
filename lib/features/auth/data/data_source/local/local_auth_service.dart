import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class LocalAuthService {
  Future<bool> saveToken({required String token});

  String? getToken();

  Future<bool> deleteToken();
}

@Singleton(as: LocalAuthService)
class LocalAuthServiceImpl extends LocalAuthService {
  final SharedPreferences _preferences;

  String tokenKey = 'token_key';

  LocalAuthServiceImpl(this._preferences);

  @override
  Future<bool> deleteToken() async {
    return await _preferences.remove(tokenKey);
  }

  @override
  String? getToken() {
    return _preferences.getString(tokenKey);
  }

  @override
  Future<bool> saveToken({required String token}) async {
    return await _preferences.setString(tokenKey, token);
  }
}
