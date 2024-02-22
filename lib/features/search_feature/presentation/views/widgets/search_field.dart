import 'package:flutter/material.dart';
import 'package:ofbook/constants/media_query.dart';

import '../../../../../core/utils/styles.dart';
class SearchField extends StatelessWidget {
  const SearchField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      width: getScreenWidth(context)*0.8,
      height: 70,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white.withOpacity(0.1),
      ),
      child: const Center(
        child: TextField(
          decoration: InputDecoration(
              prefixIcon: Icon(Icons.search_rounded,size: 50,),
              hintText: "Search",
              hintStyle: Styles.normalTextStyle20,
              enabledBorder: InputBorder.none,
              focusedBorder: InputBorder.none
          ),
        ),
      ),

    );
  }
}

