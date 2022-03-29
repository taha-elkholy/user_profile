import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:user_profile/core/di/injector/injector.dart';
import 'package:user_profile/core/helpers/helpers.dart';
import 'package:user_profile/core/widgets/app_progress_indicator.dart';
import 'package:user_profile/features/auth/presentation/pages/login_screen.dart';
import 'package:user_profile/features/profile/presentation/bloc/profile_cubit/profile_cubit.dart';
import 'package:user_profile/features/profile/presentation/bloc/profile_cubit/profile_states.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<ProfileCubit>(),
      child: BlocConsumer<ProfileCubit, ProfileStates>(
        listener: (context, state) {
          if (state is ProfileLogoutLoadedState) {
            navigateAndFinish(context: context, screen: const LoginScreen());
          }
        },
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              title: const Text(
                'profile',
                style: TextStyle(color: Colors.deepOrange),
              ),
              actions: [
                TextButton(
                  child: const Text('Logout'),
                  onPressed: () {
                    BlocProvider.of<ProfileCubit>(context).logout();
                  },
                ),
              ],
            ),
            body: state.maybeWhen(
                loading: () => const AppProgressIndicator(),
                logoutLoading: () => const AppProgressIndicator(),
                orElse: () => Container(),
            ),
          );
        },
      ),
    );
  }
}
