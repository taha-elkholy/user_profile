import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:user_profile/core/failure/failure.dart';
import 'package:user_profile/core/use_case/use_case.dart';
import 'package:user_profile/features/auth/domain/entities/user.dart';
import 'package:user_profile/features/auth/domain/repository/auth_repository.dart';

@injectable
class LoginUseCase extends AppUseCase<User, LoginParam> {
  final AuthRepository _repository;

  LoginUseCase(this._repository);

  @override
  Future<Either<Failure, User>> call(LoginParam params) {
    return _repository.login(data: params);
  }
}

class LoginParam {
  final String email;
  final String password;

  const LoginParam({
    required this.email,
    required this.password,
  });
}
