import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:user_profile/features/auth/domain/entities/user.dart';

part 'update_profile_states.freezed.dart';

@freezed
class UpdateProfileStates with _$UpdateProfileStates {
  const factory UpdateProfileStates.initial() = UpdateProfileInitialState;

  const factory UpdateProfileStates.loading() = UpdateProfileLoadingState;

  const factory UpdateProfileStates.loaded({required User user}) = UpdateProfileLoadedState;

  const factory UpdateProfileStates.error({required String error}) =
  UpdateProfileErrorState;

}
