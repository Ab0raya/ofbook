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
        BookItem(w: getScreenWidth(context)*0.55, h: getScreenHeight(context)*0.35),
        const SizedBox(height: 40,) ,
        Text("The pencil",style: Styles.textStyle20.copyWith(fontSize: 50),),
        const Text("Olivia Watson",style: Styles.normalTextStyle20,),
        const SizedBox(height: 15,) ,
        const Rate(),
        const SizedBox(height: 40,) ,
        const PreviewAndPriceItem(),
      ],
    );
  }
}
