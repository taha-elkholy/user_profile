import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'startup_states.freezed.dart';

@freezed
class StartupStates with _$StartupStates {
  const factory StartupStates.initial() = StartupInitialState;

  const factory StartupStates.loading() = StartupLoadingState;

  const factory StartupStates.loaded({required Widget startupScreen}) = StartupLoadedState;

  const factory StartupStates.error({required String error}) =
      StartupErrorState;

}
