import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:user_profile/core/failure/failure.dart';

abstract class StartupRepository {
  Future<Either<Failure, Widget>> getStartupScreen();
}
