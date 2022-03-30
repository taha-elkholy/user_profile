import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';
import 'package:user_profile/core/const/strings.dart';
import 'package:user_profile/features/auth/data/models/user/user_model.dart';

part 'profile_user_service.g.dart';

@singleton
@RestApi(baseUrl: baseUrl)
abstract class ProfileUserService {
  @factoryMethod
  factory ProfileUserService(Dio dio) = _ProfileUserService;

  @GET('users')
  Future<UserData> getCurrentUser(
      {@Header('Authorization') required String token});

  // @POST('users')
  // Future<UserModel> updateUser(
  //     {@Header('Authorization') required String token});
}
