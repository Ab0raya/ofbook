part of 'featured_list_cubit.dart';

@immutable
abstract class FeaturedListState {}

class FeaturedListInitial extends FeaturedListState {}

class FeaturedListLoading extends FeaturedListState {}

class FeaturedListFailure extends FeaturedListState {
  final String errMsg;

  FeaturedListFailure(this.errMsg);
}

class FeaturedListSucceed extends FeaturedListState {
  final List<BookModel> books;

  FeaturedListSucceed(this.books);
}
