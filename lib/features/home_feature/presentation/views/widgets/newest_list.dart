import 'package:flutter/material.dart';
import 'package:ofbook/features/home_feature/presentation/views/widgets/newest_item.dart';

class NewestList extends StatelessWidget {
  const NewestList({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          itemBuilder: (context,index){
            return const NewestItem();
          }),
    );
  }
}
