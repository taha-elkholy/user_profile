import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:user_profile/core/di/injector/injector.dart';
import 'package:user_profile/core/helpers/helpers.dart';
import 'package:user_profile/core/widgets/app_elevated_button.dart';
import 'package:user_profile/core/widgets/app_progress_indicator.dart';
import 'package:user_profile/core/widgets/app_text_form_field.dart';
import 'package:user_profile/core/widgets/network_image.dart';
import 'package:user_profile/features/auth/domain/entities/user.dart';
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

  File? userImage;

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
    userImage = null;
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
                    child: Stack(
                      alignment: AlignmentDirectional.bottomEnd,
                      children: [
                        Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(60),
                              border:
                                  Border.all(color: Colors.white, width: 4)),
                          child:
                              StatefulBuilder(builder: (context, innerState) {
                            return (userImage != null)
                                ? Container(
                                    clipBehavior: Clip.antiAliasWithSaveLayer,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                      image: DecorationImage(
                                          image: Image.file(userImage!).image,
                                          fit: BoxFit.cover),
                                    ),
                                  )
                                : MyNetworkImage(
                                    url: widget.user.image,
                                  );
                          }),
                        ),
                        IconButton(
                          onPressed: () {
                            pickImage();
                          },
                          icon: const SizedBox(
                              width: 20,
                              height: 20,
                              child: Image(
                                color: Colors.grey,
                                image: AssetImage('assets/icons/camera.png'),
                              )),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    right: 0,
                    child: IconButton(
                      onPressed: () {
                        showSnackBar(
                            context: context, content: 'Not Available Yet');
                      },
                      icon: const SizedBox(
                          width: 20,
                          height: 20,
                          child: Image(
                            color: Colors.grey,
                            image: AssetImage('assets/icons/camera.png'),
                          )),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 10,
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
              label: 'User Name',
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
              label: 'Phone Number',
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
              label: 'Job Title',
            ),
            const SizedBox(
              height: 30,
            ),
            BlocProvider(
                create: (context) => getIt<UpdateProfileCubit>(),
                child: BlocConsumer<UpdateProfileCubit, UpdateProfileStates>(
                  listener: (context, state) {
                    state.whenOrNull(uploadImageError: (error) {
                      showSnackBar(
                          context: context, content: 'Upload Image Error');
                    }, uploadImageLoaded: (url) {
                      BlocProvider.of<UpdateProfileCubit>(context).updateUser(
                          widget.user,
                          name: nameController.text.trim(),
                          phone: phoneController.text.trim(),
                          jobTitle: jobTitleController.text.trim(),
                          image: url);
                    }, error: (error) {
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
                        uploadImageLoading: () => const AppProgressIndicator(),
                        uploadImageLoaded: (_) => const AppProgressIndicator(),
                        orElse: () {
                          return AppElevatedButton(
                              onPressed: () {
                                if (formKey.currentState!.validate()) {
                                  FocusManager.instance.primaryFocus?.unfocus();
                                  if (userImage != null) {
                                    BlocProvider.of<UpdateProfileCubit>(context)
                                        .uploadImage(imageFile: userImage!);
                                  }
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

  Future<void> pickImage() async {
    final ImagePicker _picker = ImagePicker();
    // Capture a photo
    final XFile? pickedFile =
        await _picker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      setState(() {
        userImage = File(pickedFile.path);
      });
    }
  }
}
