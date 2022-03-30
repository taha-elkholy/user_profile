import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import 'package:user_profile/core/failure/failure.dart';
import 'package:user_profile/core/use_case/use_case.dart';
import 'package:user_profile/features/auth/domain/entities/user.dart';
import 'package:user_profile/features/update_profile/domain/repository/update_profile_repository.dart';

@injectable
class UpdateUserUseCase extends AppUseCase<User, UpdatedUser> {
  final UpdateProfileRepository _repository;

  UpdateUserUseCase(this._repository);

  @override
  Future<Either<Failure, User>> call(UpdatedUser params) {
    return _repository.updateUserData(params);
  }
}

class UpdatedUser extends Equatable {
  final String? name;
  final String? phone;
  final String? jobTitle;
  final String? image;

  const UpdatedUser({this.name, this.phone, this.jobTitle, this.image});

  @override
  List<Object?> get props => [name, phone, jobTitle, image];
}
