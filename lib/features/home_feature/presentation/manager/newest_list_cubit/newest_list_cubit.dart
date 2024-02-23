import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../../data/models/book_model/book_model.dart';
import '../../../data/repos/home_repo.dart';

part 'newest_list_state.dart';

class NewestListCubit extends Cubit<NewestListState> {
  NewestListCubit(this.homeRepo) : super(NewestListInitial());
  final HomeRepo homeRepo;

  Future<void> fetchNewestBooks() async {
    emit(NewestListLoading());
    var result = await homeRepo.fetchFeaturedBooks();
    result.fold((failure) {
      emit(NewestListFailure(failure.errMessage));
    }, (books) {
      emit(NewestListSucceed(books));
    });
  }
}
