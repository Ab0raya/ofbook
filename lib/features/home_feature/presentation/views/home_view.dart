import 'package:flutter/material.dart';
import 'package:ofbook/features/home_feature/presentation/views/widgets/custom_app_bar.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          CustomAppBar(),
        ],
      ),
    );
  }
}