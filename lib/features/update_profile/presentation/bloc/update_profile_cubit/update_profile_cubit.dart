import 'dart:io';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:user_profile/features/auth/domain/entities/user.dart';
import 'package:user_profile/features/update_profile/domain/use_case/update_user_use_case.dart';
import 'package:user_profile/features/update_profile/domain/use_case/upload_image_use_case.dart';
import 'package:user_profile/features/update_profile/presentation/bloc/update_profile_cubit/update_profile_states.dart';

@injectable
class UpdateProfileCubit extends Cubit<UpdateProfileStates> {
  UpdateProfileCubit(this._updateUserUseCase, this._uploadImageUseCase)
      : super(const UpdateProfileInitialState());
  final UpdateUserUseCase _updateUserUseCase;
  final UploadImageUseCase _uploadImageUseCase;

  Future<void> updateUser(
    User user, {
    String? name,
    String? image,
    String? jobTitle,
    String? phone,
  }) async {
    emit(const UpdateProfileLoadingState());
    UpdatedUser updatedUser = UpdatedUser(
      name: name ?? user.name,
      image: image ?? '',
      phone: phone ?? user.phone,
      jobTitle: jobTitle ?? user.jobTitle,
    );

    final result = await _updateUserUseCase.call(updatedUser);
    emit(result.fold((error) {
      return UpdateProfileErrorState(error: error.message);
    }, (user) {
      return UpdateProfileLoadedState(user: user);
    }));
  }

  Future<void> uploadImage({required File imageFile}) async {
    emit(const UploadImageLoadingState());
    final result = await _uploadImageUseCase(imageFile);
    emit(result.fold((error) {
      return UploadImageErrorState(error: error.message);
    }, (url) {
      return UploadImageLoadedState(imageUrl: url);
    }));
  }
}
