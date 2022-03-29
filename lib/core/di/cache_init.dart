import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@module
abstract class CacheInit {
  @preResolve
  Future<SharedPreferences> get cacheInit async {
    return await SharedPreferences.getInstance();
  }
}
