import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:user_profile/core/failure/failure.dart';
import 'package:user_profile/core/use_case/use_case.dart';
import 'package:user_profile/features/auth/domain/entities/user.dart';
import 'package:user_profile/features/profile/domain/repository/profile_repository.dart';

@injectable
class GetUserUseCase extends AppUseCase<User, NoParams> {
  final ProfileRepository _repository;

  GetUserUseCase(this._repository);

  @override
  Future<Either<Failure, User>> call(NoParams params) {
    return _repository.getUser();
  }
}
