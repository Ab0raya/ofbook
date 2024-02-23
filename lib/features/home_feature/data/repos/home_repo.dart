import 'package:dartz/dartz.dart';
import 'package:ofbook/core/exceptions/failure.dart';
import 'package:ofbook/features/home_feature/data/models/book_model/book_model.dart';

abstract class HomeRepo{
  Future<Either<Failure,List<BookModel>>> fetchBestSellerBooks();
  Future<Either<Failure,List<BookModel>>> fetchFeaturedBooks();
}