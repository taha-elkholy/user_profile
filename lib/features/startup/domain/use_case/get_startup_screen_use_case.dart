import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:user_profile/core/failure/failure.dart';
import 'package:user_profile/core/use_case/use_case.dart';
import 'package:user_profile/features/startup/domain/repository/startup_repository.dart';

@injectable
class GetStartupScreenUseCase extends AppUseCase<Widget, NoParams> {
  final StartupRepository _repository;

  GetStartupScreenUseCase(this._repository);

  @override
  Future<Either<Failure, Widget>> call(NoParams params) {
    return _repository.getStartupScreen();
  }
}
