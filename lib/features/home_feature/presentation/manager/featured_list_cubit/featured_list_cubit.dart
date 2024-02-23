import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:ofbook/features/home_feature/data/repos/home_repo.dart';

import '../../../data/models/book_model/book_model.dart';

part 'featured_list_state.dart';

class FeaturedListCubit extends Cubit<FeaturedListState> {
  FeaturedListCubit(this.homeRepo) : super(FeaturedListInitial());
  final HomeRepo homeRepo;

  Future<void> fetchFeaturedBooks() async {
    emit(FeaturedListLoading());
    var result = await homeRepo.fetchFeaturedBooks();
    result.fold((failure) {
      emit(FeaturedListFailure(failure.errMessage));
    }, (books) {
      emit(FeaturedListSucceed(books));
    });
  }
}
