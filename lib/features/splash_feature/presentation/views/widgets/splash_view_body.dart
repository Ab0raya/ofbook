import 'package:flutter/material.dart';

import '../../../../../core/utils/assets.dart';


class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40.0),
        child: Image.asset(AssetsData.logo),
      ),
    );
  }
}
