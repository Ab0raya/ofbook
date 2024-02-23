import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ofbook/constants/media_query.dart';
import 'package:ofbook/features/home_feature/presentation/manager/featured_list_cubit/featured_list_cubit.dart';
import 'package:ofbook/features/home_feature/presentation/views/widgets/book_item.dart';

class FeaturedList extends StatelessWidget {
  const FeaturedList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedListCubit, FeaturedListState>(
      builder: (context, state) {
        if (state is FeaturedListLoading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else if (state is FeaturedListSucceed) {
          return SizedBox(
            height: getScreenHeight(context) * 0.27,
            width: getScreenWidth(context),
            child: ListView.builder(
              itemCount: state.books.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return BookItem(
                  w: getScreenWidth(context) * 0.4,
                  h: getScreenHeight(context) * 0.3,
                  imageUrl: state.books[index].volumeInfo.imageLinks
                      ?.thumbnail ??
                      '',
                );
              },
            ),
          );
        } else if (state is FeaturedListFailure) {
          return const Center(
            child: Text("Failure"),
          );
        } else {
          return const Center(
            child: Text("Something went wrong"),
          );
        }
      },
    );
  }
}
