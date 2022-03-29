import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:user_profile/core/failure/failure.dart';

abstract class AppUseCase<Type, Params> {
  Future<Either<Failure, Type>> call(Params params);
}

class NoParams extends Equatable {
  @override
  List<Object?> get props => [];
}
