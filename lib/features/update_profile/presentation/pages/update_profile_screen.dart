import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:user_profile/core/di/injector/injector.dart';
import 'package:user_profile/core/helpers/helpers.dart';
import 'package:user_profile/core/widgets/app_elevated_button.dart';
import 'package:user_profile/core/widgets/app_progress_indicator.dart';
import 'package:user_profile/core/widgets/app_text_form_field.dart';
import 'package:user_profile/features/auth/domain/entities/user.dart';
import 'package:user_profile/features/profile/presentation/pages/profile_screen.dart';
import 'package:user_profile/features/profile/presentation/widgets/network_image.dart';
import 'package:user_profile/features/update_profile/presentation/bloc/update_profile_cubit/update_profile_cubit.dart';
import 'package:user_profile/features/update_profile/presentation/bloc/update_profile_cubit/update_profile_states.dart';

class UpdateProfileScreen extends StatelessWidget {
  const UpdateProfileScreen({Key? key, required this.user}) : super(key: key);
  final User user;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Update Profile',
          style: TextStyle(color: Colors.deepOrange),
        ),
      ),
      body: UpdateProfileBody(
        user: user,
      ),
    );
  }
}

class UpdateProfileBody extends StatefulWidget {
  const UpdateProfileBody({Key? key, required this.user}) : super(key: key);
  final User user;

  @override
  State<UpdateProfileBody> createState() => _UpdateProfileBodyState();
}

class _UpdateProfileBodyState extends State<UpdateProfileBody> {
  final formKey = GlobalKey<FormState>();

  late TextEditingController nameController;
  late TextEditingController phoneController;
  late TextEditingController jobTitleController;

  @override
  void initState() {
    nameController = TextEditingController(
        text: (widget.user.name.isEmpty) ? '' : widget.user.name);
    phoneController = TextEditingController(
        text: (widget.user.phone.isEmpty) ? '' : widget.user.phone);
    jobTitleController = TextEditingController(
        text: (widget.user.jobTitle.isEmpty) ? '' : widget.user.jobTitle);
    super.initState();
  }

  @override
  void dispose() {
    nameController.dispose();
    phoneController.dispose();
    jobTitleController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(20),
      physics: const BouncingScrollPhysics(),
      child: Form(
        key: formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              alignment: Alignment.bottomRight,
              children: [
                MyNetworkImage(
                  url: widget.user.image,
                  radius: 100,
                ),
                IconButton(
                    onPressed: () {
                      // todo upload image
                    },
                    icon: const Icon(Icons.camera_alt_outlined))
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            AppTextFormField(
              controller: nameController,
              validate: (value) {
                if (value == null || value.isEmpty) {
                  return 'you must enter your name';
                }
                return null;
              },
              icon: Icons.person,
              inputType: TextInputType.name,
              hint: 'User Name',
            ),
            const SizedBox(
              height: 20,
            ),
            AppTextFormField(
              controller: phoneController,
              validate: (value) {
                if (value == null || value.length < 11) {
                  return 'Invalid phone number';
                }
                return null;
              },
              icon: Icons.phone,
              inputType: TextInputType.phone,
              hint: 'Phone Number',
            ),
            const SizedBox(
              height: 20,
            ),
            AppTextFormField(
              controller: jobTitleController,
              validate: (value) {
                if (value == null || value.isEmpty) {
                  return 'you must enter your Job Title';
                }
                return null;
              },
              icon: Icons.apartment_rounded,
              inputType: TextInputType.text,
              hint: 'Job Title',
            ),
            const SizedBox(
              height: 30,
            ),
            BlocProvider(
                create: (context) => getIt<UpdateProfileCubit>(),
                child: BlocConsumer<UpdateProfileCubit, UpdateProfileStates>(
                  listener: (context, state) {
                    state.whenOrNull(error: (error) {
                      showSnackBar(
                          context: context, content: 'Update User Error');
                    }, loaded: (user) {
                      Navigator.pop(context);
                    });
                  },
                  builder: (context, state) {
                    return state.maybeWhen(
                        loading: () => const AppProgressIndicator(),
                        loaded: (_) => const AppProgressIndicator(),
                        orElse: () {
                          return AppElevatedButton(
                              onPressed: () {
                                if (formKey.currentState!.validate()) {
                                  FocusManager.instance.primaryFocus?.unfocus();
                                  BlocProvider.of<UpdateProfileCubit>(context)
                                      .updateUser(widget.user,
                                          name: nameController.text,
                                          phone: phoneController.text,
                                          jobTitle: jobTitleController.text);
                                }
                              },
                              text: 'Submit');
                        });
                  },
                )),
          ],
        ),
      ),
    );
  }
}
