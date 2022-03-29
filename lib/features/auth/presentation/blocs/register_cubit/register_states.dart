import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_states.freezed.dart';

@freezed
class RegisterStates with _$RegisterStates {
  const factory RegisterStates.initial() = RegisterInitialState;

  const factory RegisterStates.loading() = RegisterLoadingState;

  const factory RegisterStates.loaded() = RegisterLoadedState;

  const factory RegisterStates.error({required String error}) =
      RegisterErrorState;
}
