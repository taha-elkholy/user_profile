import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:user_profile/core/failure/failure.dart';
import 'package:user_profile/core/use_case/use_case.dart';
import 'package:user_profile/features/update_profile/domain/repository/update_profile_repository.dart';

@injectable
class UploadImageUseCase extends AppUseCase<String, File> {
  final UpdateProfileRepository _repository;

  UploadImageUseCase(this._repository);

  @override
  Future<Either<Failure, String>> call(File params) {
    return _repository.uploadImage(params);
  }
}
