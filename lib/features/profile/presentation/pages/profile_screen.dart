import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:user_profile/core/di/injector/injector.dart';
import 'package:user_profile/core/helpers/helpers.dart';
import 'package:user_profile/core/widgets/app_elevated_button.dart';
import 'package:user_profile/core/widgets/app_progress_indicator.dart';
import 'package:user_profile/core/widgets/network_image.dart';
import 'package:user_profile/features/auth/domain/entities/user.dart';
import 'package:user_profile/features/auth/presentation/pages/login_screen.dart';
import 'package:user_profile/features/profile/presentation/bloc/profile_cubit/profile_cubit.dart';
import 'package:user_profile/features/profile/presentation/bloc/profile_cubit/profile_states.dart';
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
              ),
              actions: [
                IconButton(
                  icon: const SizedBox(
                      width: 20,
                      height: 20,
                      child: Image(
                        image: AssetImage('assets/icons/logout.png'),
                      )),
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
            SizedBox(
              height: 200,
              child: Stack(
                children: [
                  SizedBox(
                    width: double.infinity,
                    height: 150,
                    child: Card(
                      elevation: 8,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25)),
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      child: const Image(
                        image: AssetImage('assets/images/bg.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(60),
                          border: Border.all(color: Colors.white, width: 4)),
                      child: MyNetworkImage(
                        url: user.image,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  user.name,
                  style: Theme.of(context)
                      .textTheme
                      .headline3!
                      .copyWith(color: Colors.black),
                ),
                const SizedBox(width: 10),
                const Icon(
                  Icons.check_circle,
                  color: Colors.blue,
                  size: 20,
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                const SizedBox(
                    width: 20,
                    height: 20,
                    child: Image(
                      image: AssetImage('assets/icons/job.png'),
                    )),
                const SizedBox(
                  width: 16,
                ),
                Text(
                  'Job Title ',
                  style: Theme.of(context).textTheme.bodyText1,
                ),
                Text(
                  user.jobTitle,
                  style: Theme.of(context).textTheme.subtitle1,
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                const SizedBox(
                    width: 20,
                    height: 20,
                    child: Image(
                      image: AssetImage('assets/icons/phone.png'),
                    )),
                const SizedBox(
                  width: 16,
                ),
                Text(
                  'Phone ',
                  style: Theme.of(context).textTheme.bodyText1,
                ),
                Text(
                  user.phone,
                  style: Theme.of(context).textTheme.subtitle1,
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                const SizedBox(
                    width: 20,
                    height: 20,
                    child: Image(
                      image: AssetImage('assets/icons/gmail.png'),
                    )),
                const SizedBox(
                  width: 16,
                ),
                Text(
                  'Email ',
                  style: Theme.of(context).textTheme.bodyText1,
                ),
                Text(
                  user.email,
                  style: Theme.of(context).textTheme.subtitle1,
                ),
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
