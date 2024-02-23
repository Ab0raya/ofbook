import 'package:flutter/material.dart';
import 'package:ofbook/features/home_feature/presentation/views/widgets/book_item.dart';

import '../../../../../constants/media_query.dart';

class AlsoLikeList extends StatelessWidget {
  const AlsoLikeList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context,index){
            return BookItem(w: getScreenWidth(context)*0.23, h: getScreenHeight(context)*0.17, imageUrl: 'https://www.designforwriters.com/wp-content/uploads/2017/10/design-for-writers-book-cover-tf-2-a-million-to-one.jpg',);
          }),
    );
  }
}
