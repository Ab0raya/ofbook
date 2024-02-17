import 'package:flutter/material.dart';

import '../../../../../core/utils/assets.dart';
class ListItem extends StatelessWidget {
  const ListItem({super.key, required this.w, required this.h});
  final double w;
  final double h;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      width: w,
      height: h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        image: const DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage(AssetsData.testCover),
        ),
      ),
    );
  }
}
