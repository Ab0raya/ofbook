import 'package:flutter/material.dart';
import 'package:ofbook/constants/media_query.dart';
import 'package:ofbook/features/home_feature/presentation/views/widgets/custom_app_bar.dart';
import 'package:ofbook/features/home_feature/presentation/views/widgets/horizontal_list.dart';

import '../../../../../core/utils/styles.dart';
import 'best_seller_item.dart';

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
          HorizontalList(),
          SizedBox(
            height: 50,
          ),
          Text(
            'Best seller',
            style: Styles.textStyle25,
          ),
          SizedBox(
            height: 20,
          ),
          BestSellerList()
        ],
      ),
    );
  }
}

class BestSellerList extends StatelessWidget {
  const BestSellerList({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(itemBuilder: (context,index){
        return const BestSellerItem();
      }),
    );
  }
}
