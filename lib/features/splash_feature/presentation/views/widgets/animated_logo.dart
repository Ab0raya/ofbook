
import 'package:flutter/material.dart';

import '../../../../../core/utils/assets.dart';

class AnimatedLogo extends StatelessWidget {
  const AnimatedLogo({
    super.key,
    required this.sliding,
  });

  final Animation<Offset> sliding;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: sliding,
      builder: (context, _) {
        return SlideTransition(
            position: sliding,
            child: Image.asset(AssetsData.logo));
      },
    );
  }
}
