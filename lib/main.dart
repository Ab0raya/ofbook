import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ofbook/constants/colors.dart';
import 'package:ofbook/features/splash_feature/presentation/views/splash_view.dart';
void main() {
  runApp(const Ofbook());
}

class Ofbook extends StatelessWidget {
  const Ofbook({super.key});

  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData().copyWith(scaffoldBackgroundColor: kPrimaryColor),
      home: const SplashView(),
    );
  }
}
