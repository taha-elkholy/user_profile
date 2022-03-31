import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:user_profile/core/di/injector/injector.dart';
import 'package:user_profile/core/helpers/helpers.dart';
import 'package:user_profile/core/widgets/app_elevated_button.dart';
import 'package:user_profile/core/widgets/app_progress_indicator.dart';
import 'package:user_profile/features/auth/domain/entities/user.dart';
import 'package:user_profile/features/auth/presentation/pages/login_screen.dart';
import 'package:user_profile/features/profile/presentation/bloc/profile_cubit/profile_cubit.dart';
import 'package:user_profile/features/profile/presentation/bloc/profile_cubit/profile_states.dart';
import 'package:user_profile/features/profile/presentation/widgets/network_image.dart';
import 'package:user_profile/features/profile/presentation/widgets/table_text.dart';
import 'package:user_profile/features/update_profile/presentation/pages/update_profile_screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<ProfileCubit>()..getUser(),
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
            body: state.mapOrNull(
              loading: (_) => const AppProgressIndicator(),
              logoutLoading: (_) => const AppProgressIndicator(),
              loaded: (loadedState) => ProfileBody(user: loadedState.user),
              error: (errorState) => Center(
                child: Text(errorState.error),
              ),
            ),
          );
        },
      ),
    );
  }
}

class ProfileBody extends StatelessWidget {
  const ProfileBody({Key? key, required this.user}) : super(key: key);
  final User user;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: MyNetworkImage(
                url: user.image,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Table(
              columnWidths: const {
                0: FlexColumnWidth(1),
                1: FlexColumnWidth(1),
              },
              children: [
                TableRow(children: [
                  const TableText(text: 'User Name'),
                  TableText(text: user.name),
                ]),
                TableRow(children: [
                  const TableText(text: 'Job Title'),
                  TableText(text: user.jobTitle),
                ]),
                TableRow(children: [
                  const TableText(text: 'Phone'),
                  TableText(text: user.phone),
                ]),
                TableRow(children: [
                  const TableText(text: 'Email'),
                  TableText(text: user.email),
                ]),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            AppElevatedButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(
                          builder: (context) =>
                              UpdateProfileScreen(user: user)))
                      .then((_) {
                    BlocProvider.of<ProfileCubit>(context).getUser();
                  });
                },
                text: 'Update')
          ],
        ),
      ),
    );
  }
}
