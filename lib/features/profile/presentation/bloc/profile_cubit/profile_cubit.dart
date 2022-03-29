import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:user_profile/core/use_case/use_case.dart';
import 'package:user_profile/features/auth/domain/use_case/logout_use_case.dart';
import 'package:user_profile/features/profile/presentation/bloc/profile_cubit/profile_states.dart';

@injectable
class ProfileCubit extends Cubit<ProfileStates> {
  ProfileCubit(this._useCase) : super(const ProfileInitialState());
  final LogoutUseCase _useCase;

  Future<void> logout() async {
    emit(const ProfileLogoutLoadingState());
    final result = await _useCase.call(NoParams());
    emit(result.fold((error) {
      return ProfileLogoutErrorState(error: error.message);
    }, (message) {
      return const ProfileLogoutLoadedState();
    }));
  }
}
