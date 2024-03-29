import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ofbook/core/utils/app_router.dart';
import '../../../../../core/utils/assets.dart';
import 'package:go_router/go_router.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 20, 8, 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            AssetsData.logo,
            width: 150,
            height: 75,
          ),
          IconButton(
              onPressed: () {
                GoRouter.of(context).push(AppRouter.searchViewPath);
              },
              icon: const Icon(
                FontAwesomeIcons.magnifyingGlass,
                color: Colors.white,
                size: 30,
              ),
          ),
        ],
      ),
    );
  }
}
