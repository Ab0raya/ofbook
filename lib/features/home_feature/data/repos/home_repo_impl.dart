import 'package:dartz/dartz.dart';
import 'package:ofbook/core/exceptions/failure.dart';
import 'package:ofbook/features/home_feature/data/models/book_model/book_model.dart';
import 'package:ofbook/features/home_feature/data/repos/home_repo.dart';

class HomeRepoImpl implements HomeRepo{
  @override
  Future<Either<Failure, List<BookModel>>> fetchBestSellerBooks() {
    // TODO: implement fetchBestSellerBooks
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() {
    // TODO: implement fetchFeaturedBooks
    throw UnimplementedError();
  }

}