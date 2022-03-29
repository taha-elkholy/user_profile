import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/http.dart';
import 'package:user_profile/core/const/strings.dart';
import 'package:user_profile/features/auth/data/models/login/login_sent_data.dart';
import 'package:user_profile/features/auth/data/models/logout/logout_model.dart';
import 'package:user_profile/features/auth/data/models/register/register_sent_data.dart';
import 'package:user_profile/features/auth/data/models/user/user_model.dart';

part 'auth_service.g.dart';

@singleton
@RestApi(baseUrl: baseUrl)
abstract class AuthService {
  @factoryMethod
  factory AuthService(Dio dio) = _AuthService;

  @POST('register')
  Future<UserModel> register(
      {@Body() required RegisterSentData registerSentData});

  @POST('login')
  Future<UserModel> login({@Body() required LoginSentData loginSentData});

  @POST('logout')
  Future<LogoutModel> logout({@Header('Authorization') required String token});
}
