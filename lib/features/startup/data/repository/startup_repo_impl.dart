import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:user_profile/core/failure/failure.dart';
import 'package:user_profile/features/auth/data/data_source/local/local_auth_service.dart';
import 'package:user_profile/features/auth/presentation/pages/login_screen.dart';
import 'package:user_profile/features/profile/presentation/pages/profile_screen.dart';
import 'package:user_profile/features/startup/domain/repository/startup_repository.dart';

@Singleton(as: StartupRepository)
class StartupRepoImpl extends StartupRepository {
  final LocalAuthService _localService;

  StartupRepoImpl(this._localService);

  @override
  Future<Either<Failure, Widget>> getStartupScreen() async {
    try {
      final token = _localService.getToken();

      return right(token != null ? const ProfileScreen() : const LoginScreen());
    } catch (error) {
      return left(const Failure(message: 'Get Startup Error'));
    }
  }
}
