import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:user_profile/core/failure/failure.dart';
import 'package:user_profile/features/auth/data/data_source/local/local_auth_service.dart';
import 'package:user_profile/features/auth/data/data_source/remote/auth_service.dart';
import 'package:user_profile/features/auth/data/models/login/login_sent_data.dart';
import 'package:user_profile/features/auth/data/models/register/register_sent_data.dart';
import 'package:user_profile/features/auth/data/models/user/user_model.dart';
import 'package:user_profile/features/auth/domain/entities/user.dart';
import 'package:user_profile/features/auth/domain/repository/auth_repository.dart';
import 'package:user_profile/features/auth/domain/use_case/login_use_case.dart';
import 'package:user_profile/features/auth/domain/use_case/register_use_case.dart';

@Injectable(as: AuthRepository)
class AuthRepoImpl extends AuthRepository {
  final AuthService _service;
  final LocalAuthService _localService;

  AuthRepoImpl(this._service, this._localService);

  @override
  Future<Either<Failure, User>> login({required LoginParam data}) async {
    LoginSentData sentDada = _loginDataMapper(data);
    try {
      if (kDebugMode) {
        print('login start with user data ${sentDada.toString()}');
      }
      final userModel = await _service.login(loginSentData: sentDada);
      if (kDebugMode) {
        print('login user model $userModel');
      }
      _localService.saveToken(token: userModel.token).then((value) {
        if (kDebugMode) {
          print('login save token value $value');
        }
      });
      return right(_userMapper(userModel));
    } catch (error) {
      if (kDebugMode) {
        print('Login Error $error');
      }

      return left(const Failure(message: 'Login Error'));
    }
  }

  @override
  Future<Either<Failure, User>> register({required RegisterParam data}) async {
    RegisterSentData sentDada = _registerDataMapper(data);
    try {
      if (kDebugMode) {
        print('register start with user data ${sentDada.toString()}');
      }
      final userModel = await _service.register(registerSentData: sentDada);
      if (kDebugMode) {
        print('register user model $userModel');
      }
      _localService.saveToken(token: userModel.token).then((value) {
        if (kDebugMode) {
          print('register save token value $value');
        }
      });
      return right(_userMapper(userModel));
    } catch (error) {
      if (kDebugMode) {
        print('Register Error $error');
      }

      return left(const Failure(message: 'Register Error'));
    }
  }

  @override
  Future<Either<Failure, String>> logout() async {
    String? token = _localService.getToken();

    if (token != null) {
      try {
        if (kDebugMode) {
          print('start logout...');
        }
        final logoutResult = await _service.logout(token: 'Bearer $token');

        if (kDebugMode) {
          print('you have logout...');
        }

        // remove token from local
        await _localService.deleteToken();
        return right(logoutResult.message ?? 'Logout');
      } catch (error) {
        if (kDebugMode) {
          print('Logout Catch Error $error');
        }
        return left(const Failure(message: 'Logout Error'));
      }
    } else {
      return left(const Failure(message: 'No Token in Your Local DB'));
    }
  }
}

RegisterSentData _registerDataMapper(RegisterParam data) {
  return RegisterSentData(
    name: data.name,
    phone: data.phone,
    email: data.email,
    password: data.password,
    passwordConformation: data.passwordConfirmation,
  );
}

LoginSentData _loginDataMapper(LoginParam param) {
  return LoginSentData(email: param.email, password: param.password);
}

User _userMapper(UserModel model) {
  return User(
      name: model.user.name ?? '',
      email: model.user.email ?? '',
      image: model.user.image ?? '',
      phone: model.user.phone ?? '',
      jobTitle: model.user.jobTitle ?? '');
}
