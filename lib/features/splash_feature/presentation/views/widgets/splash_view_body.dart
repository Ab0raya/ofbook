import 'package:flutter/material.dart';
import 'package:ofbook/core/utils/app_router.dart';
import 'package:ofbook/features/splash_feature/presentation/views/widgets/animated_logo.dart';
import 'package:go_router/go_router.dart';


class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> sliding;

  @override
  void initState() {
    super.initState();
    initSliding();
    navigateToHome();
  }

  void navigateToHome() {
    Future.delayed(const Duration(seconds: 3), () {
      GoRouter.of(context).push(AppRouter.homeViewPath);
      // Get.to(()=> const HomeView(),
      //     transition: Transition.cupertino, duration: kPrimaryDuration);
    });
  }

  void initSliding() {
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
    sliding = Tween<Offset>(begin: const Offset(0, 15), end: Offset.zero)
        .animate(animationController);
    animationController.forward();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40.0),
      child: Center(
        child: AnimatedLogo(sliding: sliding),
      ),
    );
  }
}
