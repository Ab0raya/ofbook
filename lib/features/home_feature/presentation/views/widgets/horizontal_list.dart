import 'package:flutter/material.dart';
import 'package:ofbook/features/home_feature/presentation/views/widgets/list_item.dart';
class HorizontalList extends StatelessWidget {
  const HorizontalList({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SizedBox(
      height: height*0.3,
      width: width,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder:(context, index) {
            return const ListItem();
          }),
    );
  }
}
