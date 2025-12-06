import 'package:bookly_app_project/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app_project/features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'newst_books_state.dart';

class NewstBooksCubit extends Cubit<NewstBooksState> {
  NewstBooksCubit(this.homeRepo) : super(NewstBooksInitial());
  final HomeRepo homeRepo;
  void newstBooks() async {
    emit(NewstBooksLoading());
    var result = await homeRepo.fetchFeaturedBooks();
    result.fold(
      (failure) {
        emit(NewstBooksFailure(erroMsg: failure.message));
      },
      (books) {
        emit(NewstBooksSuccess(books: books));
      },
    );
  }
}
