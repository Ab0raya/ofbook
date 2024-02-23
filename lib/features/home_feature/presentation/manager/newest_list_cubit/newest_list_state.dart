part of 'newest_list_cubit.dart';

@immutable
abstract class NewestListState {}

class NewestListInitial extends NewestListState {}

class NewestListLoading extends NewestListState {}

class NewestListFailure extends NewestListState {
  final String errMsg;

  NewestListFailure(this.errMsg);
}

class NewestListSucceed extends NewestListState {
  final List<BookModel> books;

  NewestListSucceed(this.books);
}
