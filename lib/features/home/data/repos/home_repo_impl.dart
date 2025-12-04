import 'dart:js_interop';

import 'package:bookly_app_project/core/errors/failure.dart';
import 'package:bookly_app_project/core/utils/api_service.dart';
import 'package:bookly_app_project/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app_project/features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiService apiService;

  HomeRepoImpl({required this.apiService});
  @override
  Future<Either<Failure, List<BookModel>>> fetchNewstBooks() async {
    try {
      var data = await apiService.get(
        endpoint:
            "volumes?Filtering=free-ebooks&q=subject:crime%20fiction&Sorting=newst",
      );
      List<BookModel> books = [];
      for (var book in data['items']) {
        books.add(BookModel.fromJson(book));
      }
      return right(books);
    } catch (e) {
      return left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks({
    String? volumId,
  }) async {
    throw UnimplementedError();
  }
}
