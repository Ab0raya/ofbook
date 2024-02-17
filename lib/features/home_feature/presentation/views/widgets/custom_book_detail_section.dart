import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class CustomBookDetailsAppBar extends StatelessWidget {
  const CustomBookDetailsAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(onPressed: (){GoRouter.of(context).pop();}, icon: const Icon(FontAwesomeIcons.x,size: 35,),),
          IconButton(onPressed: (){}, icon: const Icon(FontAwesomeIcons.cartShopping,size: 35,),),
        ],
      ),
    );
  }
}