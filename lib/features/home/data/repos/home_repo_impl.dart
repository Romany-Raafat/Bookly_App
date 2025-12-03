import 'package:bookly_app_project/core/errors/failure.dart';
import 'package:bookly_app_project/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app_project/features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImpl implements HomeRepo {
  @override
  Future<Either<Failure, List<BookModel>>> fetchBestSellerBooks() async {
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks({
    String? volumId,
  }) async {
    throw UnimplementedError();
  }
}
