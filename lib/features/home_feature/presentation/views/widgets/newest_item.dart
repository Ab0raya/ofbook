import 'package:flutter/material.dart';
import 'package:ofbook/core/utils/app_router.dart';
import 'package:ofbook/features/home_feature/data/models/book_model/book_model.dart';
import 'package:ofbook/features/home_feature/presentation/views/widgets/book_item.dart';
import 'package:ofbook/features/home_feature/presentation/views/widgets/rate.dart';
import '../../../../../constants/media_query.dart';
import '../../../../../core/utils/styles.dart';
import 'package:go_router/go_router.dart';

class NewestItem extends StatelessWidget {
  const NewestItem({
    super.key, required this.book,
  });
  final BookModel book;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        GoRouter.of(context).push(AppRouter.bookDetailsViewPath);
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16.0),
        child: Row(
          children: [
            BookItem(
              w: getScreenWidth(context) * 0.28,
              h: getScreenHeight(context) * 0.18, imageUrl: book.volumeInfo.imageLinks?.thumbnail??"",
            ),
            const SizedBox(
              width: 10,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: getScreenWidth(context) * 0.5,
                    child: Text(
                      '${book.volumeInfo.title}',
                      style: Styles.textStyle20,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                   book.volumeInfo.authors![0],
                    style: Styles.textStyle16,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                   Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Free',
                        style: Styles.textStyle25.copyWith(
                            fontWeight: FontWeight.bold, fontSize: 30),
                      ),
                      Rate(rate: (book.volumeInfo.averageRating??0).toString(),rateTimes: (book.volumeInfo.ratingsCount??0).toString()),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

