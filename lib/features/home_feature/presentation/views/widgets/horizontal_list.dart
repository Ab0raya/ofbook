import 'package:flutter/material.dart';
import 'package:ofbook/constants/media_query.dart';
import 'package:ofbook/features/home_feature/presentation/views/widgets/book_item.dart';
class HorizontalList extends StatelessWidget {
  const HorizontalList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getScreenHeight(context)*0.27,
      width: getScreenWidth(context),
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder:(context, index) {
            return  BookItem(w: getScreenWidth(context) * 0.4,h:getScreenHeight(context) * 0.3);
          }),
    );
  }
}
