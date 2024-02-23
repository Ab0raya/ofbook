import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../../../core/utils/styles.dart';

class Rate extends StatelessWidget {
  final String rate;
  final String rateTimes;
  const Rate({
    super.key, required this.rate, required this.rateTimes,
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
         rate,
          style: Styles.textStyle25
              .copyWith(fontWeight: FontWeight.bold),
        ),
        const SizedBox(width: 5,),
        Text(
          '($rateTimes)',
          style: Styles.textStyle16.copyWith(fontSize: 20),
        ),
      ],
    );
  }
}