import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:user_profile/features/auth/domain/use_case/login_use_case.dart';
import 'package:user_profile/features/auth/presentation/blocs/login_cubit/login_states.dart';

@injectable
class LoginCubit extends Cubit<LoginStates> {
  LoginCubit(this._useCase) : super(const LoginInitialState());

  final LoginUseCase _useCase;

  Future<void> login({
    required String email,
    required String password,
  }) async {
    emit(const LoginLoadingState());
    final loginData = LoginParam(
      email: email,
      password: password,
    );
    final result = await _useCase.call(loginData);
    emit(result.fold((error) => LoginErrorState(error: error.message),
        (user) => const LoginLoadedState()));
  }
}
