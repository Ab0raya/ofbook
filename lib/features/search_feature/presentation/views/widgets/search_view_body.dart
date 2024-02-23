import 'package:flutter/material.dart';
import 'package:ofbook/core/utils/styles.dart';
import 'package:ofbook/features/search_feature/presentation/views/widgets/search_field.dart';
import 'package:go_router/go_router.dart';

import '../../../../home_feature/presentation/views/widgets/newest_list.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.fromLTRB(10, 55, 10, 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              IconButton(
                onPressed: () {
                  GoRouter.of(context).pop();
                },
                icon: const Icon(
                  Icons.arrow_back_ios,
                  size: 40,

                ),
              ),
              const SearchField(),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          const Text(
            'Search result',
            style: Styles.textStyle25,
          ),
          const NewestList(),
        ],
      ),
    );
  }
}
