import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:user_profile/features/auth/domain/use_case/register_use_case.dart';
import 'package:user_profile/features/auth/presentation/blocs/register_cubit/register_states.dart';

@injectable
class RegisterCubit extends Cubit<RegisterStates> {
  RegisterCubit(this._useCase) : super(const RegisterInitialState());

  final RegisterUseCase _useCase;

  Future<void> register({
    required String name,
    required String phone,
    required String email,
    required String password,
    required String passwordConfirmation,
  }) async {
    emit(const RegisterLoadingState());
    final registerData = RegisterParam(
        name: name,
        phone: phone,
        email: email,
        password: password,
        passwordConfirmation: passwordConfirmation);
    final result = await _useCase.call(registerData);
    emit(result.fold((error) => RegisterErrorState(error: error.message),
        (user) => const RegisterLoadedState()));
  }
}
