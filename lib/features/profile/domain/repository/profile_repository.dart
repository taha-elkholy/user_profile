import 'package:dartz/dartz.dart';
import 'package:user_profile/core/failure/failure.dart';
import 'package:user_profile/features/auth/domain/entities/user.dart';

abstract class ProfileRepository {
  Future<Either<Failure, User>> getUser();
}
