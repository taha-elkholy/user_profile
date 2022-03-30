import 'package:flutter/material.dart';
import 'package:user_profile/core/di/injector/injector.dart';
import 'package:user_profile/core/style/themes.dart';
import 'package:user_profile/features/startup/presentation/pages/startup_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: appThemeLight,
      home: const StartupScreen(),
    );
  }
}
