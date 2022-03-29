import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_states.freezed.dart';

@freezed
class LoginStates with _$LoginStates {
  const factory LoginStates.initial() = LoginInitialState;

  const factory LoginStates.loading() = LoginLoadingState;

  const factory LoginStates.loaded() = LoginLoadedState;

  const factory LoginStates.error({required String error}) =
  LoginErrorState;
}
