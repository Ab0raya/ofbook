import 'package:flutter/material.dart';
import 'package:ofbook/features/home_feature/presentation/views/widgets/list_item.dart';
import 'package:ofbook/features/home_feature/presentation/views/widgets/rate.dart';
import '../../../../../constants/media_query.dart';
import '../../../../../core/utils/styles.dart';

class BestSellerItem extends StatelessWidget {
  const BestSellerItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Row(
        children: [
          ListItem(
            w: getScreenWidth(context) * 0.28,
            h: getScreenHeight(context) * 0.18,
          ),
          const SizedBox(
            width: 30,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: getScreenWidth(context) * 0.5,
                  child: const Text(
                    'Harry potter and the goblet of fire',
                    style: Styles.textStyle20,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  'M.Aburaya',
                  style: Styles.textStyle16,
                ),
                const SizedBox(
                  height: 5,
                ),
                const Rate()
              ],
            ),
          ),
        ],
      ),
    );
  }
}

