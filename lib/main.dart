import 'package:flutter/material.dart';
import 'package:ofbook/constants/colors.dart';
import 'package:ofbook/core/utils/app_router.dart';
import 'package:google_fonts/google_fonts.dart';
void main() {
  runApp(const Ofbook());
}

class Ofbook extends StatelessWidget {
  const Ofbook({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter.router,
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: kPrimaryColor,
        textTheme:GoogleFonts.montserratAlternatesTextTheme(ThemeData.dark().textTheme)
      ),
    );
  }
}
