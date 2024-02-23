import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ofbook/features/home_feature/presentation/manager/newest_list_cubit/newest_list_cubit.dart';
import 'package:ofbook/features/home_feature/presentation/views/widgets/newest_item.dart';

class NewestList extends StatelessWidget {
  const NewestList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestListCubit, NewestListState>(
      builder: (context, state) {
        if (state is NewestListLoading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else if (state is NewestListSucceed) {
          return Expanded(
            child: ListView.builder(
                itemCount: state.books.length,
                itemBuilder: (context, index) {
                  return NewestItem(
                    book: state.books[index],
                  );
                }),
          );
        } else if (state is NewestListFailure) {
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
