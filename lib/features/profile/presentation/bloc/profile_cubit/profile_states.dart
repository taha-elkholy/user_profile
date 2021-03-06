import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:user_profile/features/auth/domain/entities/user.dart';

part 'profile_states.freezed.dart';

@freezed
class ProfileStates with _$ProfileStates {
  const factory ProfileStates.initial() = ProfileInitialState;

  const factory ProfileStates.loading() = ProfileLoadingState;

  const factory ProfileStates.loaded({required User user}) = ProfileLoadedState;

  const factory ProfileStates.error({required String error}) =
      ProfileErrorState;

  // logout states
  const factory ProfileStates.logoutLoading() = ProfileLogoutLoadingState;

  const factory ProfileStates.logoutLoaded() = ProfileLogoutLoadedState;

  const factory ProfileStates.logoutError({required String error}) =
      ProfileLogoutErrorState;
}
