import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:user_profile/core/use_case/use_case.dart';
import 'package:user_profile/features/startup/domain/use_case/get_startup_screen_use_case.dart';
import 'package:user_profile/features/startup/presentation/bloc/startup_states.dart';

@injectable
class StartupCubit extends Cubit<StartupStates> {
  StartupCubit(this._useCase) : super(const StartupInitialState());
  final GetStartupScreenUseCase _useCase;

  Future<void> getHome() async {
    emit(const StartupLoadingState());
    final startupScreen = await _useCase.call(NoParams());
    emit(startupScreen.fold((error) {
      return StartupErrorState(error: error.message);
    }, (startupScreen) {
      return StartupLoadedState(startupScreen: startupScreen);
    }));
  }
}
