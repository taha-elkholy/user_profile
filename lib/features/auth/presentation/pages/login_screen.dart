import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:user_profile/core/const/strings.dart';
import 'package:user_profile/core/di/injector/injector.dart';
import 'package:user_profile/core/helpers/helpers.dart';
import 'package:user_profile/core/widgets/app_elevated_button.dart';
import 'package:user_profile/core/widgets/app_progress_indicator.dart';
import 'package:user_profile/core/widgets/app_text_form_field.dart';
import 'package:user_profile/features/auth/presentation/blocs/login_cubit/login_cubit.dart';
import 'package:user_profile/features/auth/presentation/blocs/login_cubit/login_states.dart';
import 'package:user_profile/features/auth/presentation/pages/register_screen.dart';
import 'package:user_profile/features/profile/presentation/pages/profile_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();

  bool _isPasswordShown = false;
  late TextEditingController emailController;

  late TextEditingController passwordController;

  @override
  void initState() {
    emailController = TextEditingController();
    passwordController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<LoginCubit>(),
      child: BlocListener<LoginCubit, LoginStates>(
        listener: (context, state) {
          state.maybeWhen(
            loaded: (){
              navigateAndFinish(
                context: context,
                screen: const ProfileScreen(),
              );
            },
              error: (error){
               showSnackBar(context: context, content: error);
              },
              orElse: (){},
          );
        },
        child: Scaffold(
          appBar: AppBar(),
          body: Center(
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 30,
                  ),
                  CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.white,
                    backgroundImage: const Image(
                      image: AssetImage(
                        'assets/images/logo.jpg',
                      ),
                      fit: BoxFit.cover,
                    ).image,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Align(
                    alignment: AlignmentDirectional.centerStart,
                    child: Text(
                      'Login',
                      textAlign: TextAlign.start,
                      style: Theme.of(context).textTheme.headline4,
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Form(
                    key: formKey,
                    child: Column(
                      children: [
                        AppTextFormField(
                          controller: emailController,
                          validate: (value) {
                            if (value != null) {
                              bool validation = emailRegExp.hasMatch(value);
                              if (!validation) return 'Invalid Email';
                            }
                            return null;
                          },
                          inputType: TextInputType.emailAddress,
                          hint: 'Email',
                          icon: Icons.email,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        StatefulBuilder(
                            builder: (thisLowerContext, innerSetState) =>
                                AppTextFormField(
                                  controller: passwordController,
                                  validate: (value) {
                                    if (value == null || value.length < 8) {
                                      return 'Invalid Password';
                                    }
                                    return null;
                                  },
                                  inputType: TextInputType.visiblePassword,
                                  hint: 'Password',
                                  icon: Icons.lock,
                                  obscureText: !_isPasswordShown,
                                  suffixIcon: _isPasswordShown
                                      ? Icons.visibility_off
                                      : Icons.visibility,
                                  onSuffixIconPressed: () {
                                    innerSetState(() {
                                      _isPasswordShown = !_isPasswordShown;
                                    });
                                  },
                                )),
                        const SizedBox(
                          height: 20,
                        ),
                        BlocBuilder<LoginCubit, LoginStates>(
                          builder: (context, state) {
                            return state.maybeWhen(
                                loading: () => const AppProgressIndicator(),
                                loaded: () => const AppProgressIndicator(),
                                orElse: () => AppElevatedButton(
                                    onPressed: () {
                                      if (formKey.currentState!
                                          .validate()) {
                                        FocusManager.instance.primaryFocus?.unfocus();
                                        BlocProvider.of<LoginCubit>(
                                                context)
                                            .login(
                                                email: emailController
                                                    .text
                                                    .trim(),
                                                password:
                                                    passwordController
                                                        .text);
                                      }
                                    },
                                    text: 'Login'),);
                          },
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                      ],
                    ),
                  ),
                  TextButton(
                    child: Text(
                      'Don\'t Have Account? SignUp',
                      textAlign: TextAlign.start,
                      style: Theme.of(context).textTheme.subtitle1,
                    ),
                    onPressed: () {
                      navigateAndFinish(
                          context: context, screen: const RegisterScreen());
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
