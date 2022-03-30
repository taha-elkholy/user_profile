import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:user_profile/core/failure/failure.dart';
import 'package:user_profile/features/auth/data/data_source/local/local_auth_service.dart';
import 'package:user_profile/features/auth/data/models/user/user_model.dart';
import 'package:user_profile/features/auth/domain/entities/user.dart';
import 'package:user_profile/features/profile/data/data_source/remote/profile_user_service.dart';
import 'package:user_profile/features/profile/domain/repository/profile_repository.dart';

@Singleton(as: ProfileRepository)
class ProfileRepoImpl extends ProfileRepository {
  final LocalAuthService _localService;
  final ProfileUserService _profileUserService;

  ProfileRepoImpl(this._localService, this._profileUserService);

  @override
  Future<Either<Failure, User>> getUser() async {
    try {
      final token = _localService.getToken();
      if (kDebugMode) {
        print(token ?? 'No token in cash');
      }
      if (token != null) {
        final userData =
            await _profileUserService.getCurrentUser(token: 'Bearer $token');
        if (kDebugMode) {
          print('get user data: ${userData.name}');
        }
        return right(_userMapper(userData));
      } else {
        return left(const Failure(message: 'No Token'));
      }
    } catch (error) {
      return left(const Failure(message: 'Get Startup Error'));
    }
  }
}

User _userMapper(UserData user) {
  return User(
      name: user.name ?? '',
      email: user.email ?? '',
      image: user.image ?? '',
      phone: user.phone ?? '',
      jobTitle: user.jobTitle ?? '');
}
