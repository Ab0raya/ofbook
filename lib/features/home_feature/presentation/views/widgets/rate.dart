import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../../../core/utils/styles.dart';

class Rate extends StatelessWidget {
  const Rate({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(
          FontAwesomeIcons.solidStar,
          color: Colors.amber,
          size: 20,
        ),
        const SizedBox(
          width: 5,
        ),
        Text(
          '4.8',
          style: Styles.textStyle25
              .copyWith(fontWeight: FontWeight.bold),
        ),
        const SizedBox(width: 5,),
        Text(
          '(425)',
          style: Styles.textStyle16.copyWith(fontSize: 20),
        ),
      ],
    );
  }
}