import 'package:flutter/material.dart';
import 'package:ofbook/features/home_feature/presentation/views/widgets/custom_app_bar.dart';
import 'package:ofbook/features/home_feature/presentation/views/widgets/horizontal_list.dart';
import 'package:ofbook/features/home_feature/presentation/views/widgets/list_item.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          CustomAppBar(),
          HorizontalList(),
        ],
      ),
    );
  }
}


