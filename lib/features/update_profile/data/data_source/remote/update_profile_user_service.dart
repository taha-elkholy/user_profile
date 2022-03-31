import 'dart:io';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';
import 'package:user_profile/core/const/strings.dart';
import 'package:user_profile/features/auth/data/models/user/user_model.dart';
import 'package:user_profile/features/update_profile/data/models/image/image_model.dart';
import 'package:user_profile/features/update_profile/data/models/user/update_user_model.dart';

part 'update_profile_user_service.g.dart';

@singleton
@RestApi(baseUrl: baseUrl)
abstract class UpdateProfileUserService {
  @factoryMethod
  factory UpdateProfileUserService(Dio dio) = _UpdateProfileUserService;

  @POST('users')
  Future<UserData> updateUser(
      {@Header('Authorization') required String token,
      @Body() required UpdateUserModel updatedData});

  @POST('https://api.imgbb.com/1/upload')
  @MultiPart()
  Future<ImageModel> uploadUserImage(
      {@Part(name: 'key') required String apiKey,
      @Part(name: 'image') required File imageFile});
}
