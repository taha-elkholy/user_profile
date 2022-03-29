import 'package:dartz/dartz.dart';
import 'package:user_profile/core/failure/failure.dart';
import 'package:user_profile/features/auth/domain/entities/user.dart';
import 'package:user_profile/features/auth/domain/use_case/login_use_case.dart';
import 'package:user_profile/features/auth/domain/use_case/register_use_case.dart';

abstract class AuthRepository {
  Future<Either<Failure, User>> login({required LoginParam data});

  Future<Either<Failure, User>> register({required RegisterParam data});

  Future<Either<Failure, String>> logout();
}
