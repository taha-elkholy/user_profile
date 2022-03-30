import 'package:dartz/dartz.dart';
import 'package:user_profile/core/failure/failure.dart';
import 'package:user_profile/features/auth/domain/entities/user.dart';
import 'package:user_profile/features/update_profile/domain/use_case/update_user_use_case.dart';

abstract class UpdateProfileRepository {
  Future<Either<Failure, User>> updateUserData(UpdatedUser user);
}
