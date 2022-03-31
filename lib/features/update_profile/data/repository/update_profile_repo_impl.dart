import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:user_profile/core/const/strings.dart';
import 'package:user_profile/core/failure/failure.dart';
import 'package:user_profile/features/auth/data/data_source/local/local_auth_service.dart';
import 'package:user_profile/features/auth/data/models/user/user_model.dart';
import 'package:user_profile/features/auth/domain/entities/user.dart';
import 'package:user_profile/features/update_profile/data/data_source/remote/update_profile_user_service.dart';
import 'package:user_profile/features/update_profile/data/models/image/image_model.dart';
import 'package:user_profile/features/update_profile/data/models/user/update_user_model.dart';
import 'package:user_profile/features/update_profile/domain/repository/update_profile_repository.dart';
import 'package:user_profile/features/update_profile/domain/use_case/update_user_use_case.dart';

@Singleton(as: UpdateProfileRepository)
class UpdateProfileRepoImpl extends UpdateProfileRepository {
  final LocalAuthService _localService;
  final UpdateProfileUserService _updateProfileUserService;

  UpdateProfileRepoImpl(this._localService, this._updateProfileUserService);

  @override
  Future<Either<Failure, User>> updateUserData(UpdatedUser user) async {
    try {
      final token = _localService.getToken();
      if (kDebugMode) {
        print(token ?? 'No token in cash');
      }
      if (token != null) {
        final userData = await _updateProfileUserService.updateUser(
          token: 'Bearer $token',
          updatedData: _updatedDataMapper(user),
        );
        if (kDebugMode) {
          print('update user data: ${userData.toJson()}');
        }
        return right(_userMapper(userData));
      } else {
        if (kDebugMode) {
          print('update error: No Token');
        }
        return left(const Failure(message: 'No Token'));
      }
    } catch (error) {
      if (kDebugMode) {
        print('update error: $error');
      }
      return left(const Failure(message: 'Update User Error'));
    }
  }

  @override
  Future<Either<Failure, String>> uploadImage(File imageFile) async {
    try {
      if (kDebugMode) {
        print('Upload image start');
      }
      final imageRes = await _updateProfileUserService.uploadUserImage(
        apiKey: imageApiKey,
        imageFile: imageFile,
      );

      String url = _imageUrlMapper(imageRes);
      if (kDebugMode) {
        print('image url: $url');
      }
      if (url.isNotEmpty) {
        return right(url);
      } else {
        return left(const Failure(message: 'url is empty'));
      }
    } catch (error) {
      if (kDebugMode) {
        print('upload image  error: $error');
      }
      return left(const Failure(message: 'Upload Image Error'));
    }
  }
}

User _userMapper(UserData userData) {
  return User(
    name: userData.name ?? '',
    email: userData.email ?? '',
    image: userData.image ?? '',
    phone: userData.phone ?? '',
    jobTitle: userData.jobTitle ?? '',
  );
}

UpdateUserModel _updatedDataMapper(UpdatedUser user) {
  return UpdateUserModel(
    name: user.name ?? '',
    phone: user.phone ?? '',
    jobTitle: user.jobTitle ?? '',
    image: user.image ?? '',
  );
}

String _imageUrlMapper(ImageModel imageModel) {
  return imageModel.data!.url ?? '';
}
