import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:user_profile/core/di/injector/injector.dart';
import 'package:user_profile/core/helpers/helpers.dart';
import 'package:user_profile/features/auth/presentation/pages/login_screen.dart';
import 'package:user_profile/features/startup/presentation/bloc/startup_cubit.dart';
import 'package:user_profile/features/startup/presentation/bloc/startup_states.dart';

class StartupScreen extends StatelessWidget {
  const StartupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<StartupCubit>()..getHome(),
      child: BlocListener<StartupCubit, StartupStates>(
        listener: (context, state) {
          state.whenOrNull(
            loaded: (homeScreen) {
              navigateAndFinish(context: context, screen: homeScreen);
            },
            error: (error) {
              navigateAndFinish(context: context, screen: const LoginScreen());
            },
          );
        },
        child: Scaffold(
          appBar: AppBar(),
          body: Container(),
        ),
      ),
    );
  }
}
