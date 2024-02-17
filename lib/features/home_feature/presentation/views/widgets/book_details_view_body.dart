import 'package:flutter/material.dart';
import 'package:ofbook/core/utils/styles.dart';

import 'also_like_list.dart';
import 'book_details_section.dart';
import 'custom_book_detail_section.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        children: [
          CustomBookDetailsAppBar(),
          BookDetailsSection(),
          SizedBox(height: 50,),
          Row(
            children: [
              Text(
                'You can also like',
                style: Styles.textStyle18,
              ),
            ],
          ),
          SizedBox(height: 15,),
          AlsoLikeList()
        ],
      ),
    );
  }
}



