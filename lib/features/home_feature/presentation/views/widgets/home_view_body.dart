import 'package:flutter/material.dart';
import 'package:ofbook/features/home_feature/presentation/views/widgets/custom_app_bar.dart';
import 'package:ofbook/features/home_feature/presentation/views/widgets/featured_list.dart';
import '../../../../../core/utils/styles.dart';
import 'newest_list.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(),
          FeaturedList(),
          SizedBox(
            height: 20,
          ),
          Text(
            'Newest books',
            style: Styles.textStyle25,
          ),
          NewestList(),
        ],
      ),
    );
  }
}

