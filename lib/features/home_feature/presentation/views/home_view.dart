import 'package:flutter/material.dart';
import 'package:ofbook/core/utils/styles.dart';
import 'package:ofbook/features/home_feature/presentation/views/widgets/custom_app_bar.dart';
import 'package:ofbook/features/home_feature/presentation/views/widgets/horizontal_list.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.only(left: 15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomAppBar(),
            HorizontalList(),
            SizedBox(height: 50,),
            Text('Best seller',style: Styles.textStyle25,),
          ],
        ),
      ),
    );
  }
}


