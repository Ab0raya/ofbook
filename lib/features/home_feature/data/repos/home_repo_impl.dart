import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:ofbook/core/exceptions/failure.dart';
import 'package:ofbook/core/utils/api_service.dart';
import 'package:ofbook/features/home_feature/data/models/book_model/book_model.dart';
import 'package:ofbook/features/home_feature/data/repos/home_repo.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiService apiService;

  HomeRepoImpl({required this.apiService});

  @override
  Future<Either<Failure, List<BookModel>>> fetchNewestBooks() async {
    try {
      var date = await apiService.get(
          endPoint:
              'volumes?Filtering=free-ebooks&Sorting=newest &q=computer science');
      List<BookModel> books = [];
      for (var element in date['items']) {
        books.add(BookModel.fromJson(element));
      }
      return right(books);
    } on DioException catch (e) {
      return left(ServerFailure.fromDioException(e));
    } catch (e) {
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() async {
    try {
      var date = await apiService.get(
          endPoint:
              'volumes?Filtering=free-ebooks&q=computer science');
      List<BookModel> books = [];
      for (var element in date['items']) {
        books.add(BookModel.fromJson(element));
      }
      return right(books);
    } on DioException catch (e) {
      return left(ServerFailure.fromDioException(e));
    } catch (e) {
      return left(ServerFailure(e.toString()));
    }
  }
}
