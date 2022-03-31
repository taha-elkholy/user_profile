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

  // upload image states
  const factory UpdateProfileStates.uploadImageLoading() = UploadImageLoadingState;

  const factory UpdateProfileStates.uploadImageLoaded({required String imageUrl}) = UploadImageLoadedState;

  const factory UpdateProfileStates.uploadImageError({required String error}) =
  UploadImageErrorState;

}
