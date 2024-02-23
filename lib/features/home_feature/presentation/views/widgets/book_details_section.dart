import 'package:flutter/material.dart';
import 'package:ofbook/features/home_feature/presentation/views/widgets/book_item.dart';
import 'package:ofbook/features/home_feature/presentation/views/widgets/preview_and_price_item.dart';
import 'package:ofbook/features/home_feature/presentation/views/widgets/rate.dart';

import '../../../../../constants/media_query.dart';
import '../../../../../core/utils/styles.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 20,),
        BookItem(w: getScreenWidth(context)*0.55, h: getScreenHeight(context)*0.35, imageUrl: 'https://www.designforwriters.com/wp-content/uploads/2017/10/design-for-writers-book-cover-tf-2-a-million-to-one.jpg',),
        const SizedBox(height: 40,) ,
        Text("The pencil",style: Styles.textStyle20.copyWith(fontSize: 50),),
        const Text("Olivia Watson",style: Styles.normalTextStyle20,),
        const SizedBox(height: 15,) ,
        const Rate(rate: '99', rateTimes: '99',),
        const SizedBox(height: 40,) ,
        const PreviewAndPriceItem(),
      ],
    );
  }
}
