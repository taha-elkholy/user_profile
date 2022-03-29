import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:user_profile/core/const/strings.dart';
import 'package:user_profile/core/di/injector/injector.dart';
import 'package:user_profile/core/helpers/helpers.dart';
import 'package:user_profile/core/widgets/app_elevated_button.dart';
import 'package:user_profile/core/widgets/app_progress_indicator.dart';
import 'package:user_profile/core/widgets/app_text_form_field.dart';
import 'package:user_profile/features/auth/presentation/blocs/register_cubit/register_cubit.dart';
import 'package:user_profile/features/auth/presentation/blocs/register_cubit/register_states.dart';
import 'package:user_profile/features/auth/presentation/pages/login_screen.dart';
import 'package:user_profile/features/profile/presentation/pages/profile_screen.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final formKey = GlobalKey<FormState>();

  bool _isPasswordShown = false;
  bool _isPasswordConfirmationShown = false;
  late TextEditingController nameController;
  late TextEditingController phoneController;
  late TextEditingController emailController;
  late TextEditingController passwordController;
  late TextEditingController passwordConfirmationController;

  @override
  void initState() {
    nameController = TextEditingController();
    phoneController = TextEditingController();
    emailController = TextEditingController();
    passwordController = TextEditingController();
    passwordConfirmationController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    nameController.dispose();
    phoneController.dispose();
    emailController.dispose();
    passwordController.dispose();
    passwordConfirmationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => getIt<RegisterCubit>(),
        child: BlocListener<RegisterCubit, RegisterStates>(
          listener: (context, state) {
            state.maybeWhen(
              loaded: () {
                navigateAndFinish(
                  context: context,
                  screen: const ProfileScreen(),
                );
              },
              error: (error) {
                showSnackBar(context: context, content: error);
              },
              orElse: () {},
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
                        'Register',
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
                            controller: nameController,
                            validate: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Name must be filled';
                              }
                              return null;
                            },
                            inputType: TextInputType.name,
                            hint: 'User Name',
                            icon: Icons.person,
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          AppTextFormField(
                            controller: phoneController,
                            validate: (value) {
                              if (value == null || value.length < 11) {
                                return 'Invalid Phone Number';
                              }
                              return null;
                            },
                            inputType: TextInputType.phone,
                            hint: 'Phone',
                            icon: Icons.phone,
                          ),
                          const SizedBox(
                            height: 20,
                          ),
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
                          StatefulBuilder(
                              builder: (thisLowerContext, innerSetState) =>
                                  AppTextFormField(
                                    controller: passwordConfirmationController,
                                    validate: (value) {
                                      if (value != passwordController.text) {
                                        return 'Password confirmation not matches';
                                      }
                                      return null;
                                    },
                                    inputType: TextInputType.visiblePassword,
                                    hint: 'Password Confirmation',
                                    icon: Icons.lock,
                                    obscureText: !_isPasswordConfirmationShown,
                                    suffixIcon: _isPasswordConfirmationShown
                                        ? Icons.visibility_off
                                        : Icons.visibility,
                                    onSuffixIconPressed: () {
                                      innerSetState(() {
                                        _isPasswordConfirmationShown =
                                            !_isPasswordConfirmationShown;
                                      });
                                    },
                                  )),
                          const SizedBox(
                            height: 20,
                          ),
                          BlocBuilder<RegisterCubit, RegisterStates>(
                              builder: (context, state) {
                            return state.maybeWhen(
                              loaded: () => const AppProgressIndicator(),
                              loading: () => const AppProgressIndicator(),
                              orElse: () {
                                return AppElevatedButton(
                                    onPressed: () {
                                      if (formKey.currentState!.validate()) {
                                        FocusManager.instance.primaryFocus
                                            ?.unfocus();
                                        BlocProvider.of<RegisterCubit>(context)
                                            .register(
                                                name:
                                                    nameController.text.trim(),
                                                phone:
                                                    phoneController.text.trim(),
                                                email:
                                                    emailController.text.trim(),
                                                password:
                                                    passwordController.text,
                                                passwordConfirmation:
                                                    passwordConfirmationController
                                                        .text);
                                      }
                                    },
                                    text: 'Register');
                              },
                            );
                          }),
                          const SizedBox(
                            height: 20,
                          ),
                        ],
                      ),
                    ),
                    TextButton(
                      child: Text(
                        'Already Have Account? Login',
                        textAlign: TextAlign.start,
                        style: Theme.of(context).textTheme.subtitle1,
                      ),
                      onPressed: () {
                        navigateAndFinish(
                            context: context, screen: const LoginScreen());
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
