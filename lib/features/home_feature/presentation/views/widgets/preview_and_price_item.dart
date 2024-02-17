import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';

class PreviewAndPriceItem extends StatelessWidget {
  const PreviewAndPriceItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        InkWell(
          onTap: (){},
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 50,vertical: 12),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.horizontal(left: Radius.circular(16)),
              color: Colors.white,
            ),
            child: Center(
              child: Text(
                '13.99€',
                style: Styles.textStyle25.copyWith( fontSize: 25,color: Colors.black),
              ),
            ),
          ),
        ),
        InkWell(
          onTap: (){},
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 50,vertical: 12),
            decoration: const BoxDecoration( borderRadius: BorderRadius.horizontal(right: Radius.circular(16)),
              color: Color(0xffe47966),
            ),
            child: Text(
              'Preview',
              style: Styles.textStyle25.copyWith( fontSize: 25,),
            ),
          ),
        ),
      ],
    );
  }
}
