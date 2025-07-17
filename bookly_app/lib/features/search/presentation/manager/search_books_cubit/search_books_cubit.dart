import 'package:bloc/bloc.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/search/data/repos/search_repo.dart';
import 'package:equatable/equatable.dart';

part 'search_books_state.dart';

class SearchBooksCubit extends Cubit<SearchBooksState> {
  SearchBooksCubit(this.searchRepo) : super(SearchBooksInitial());
  final SearchRepo searchRepo;

  Future<void> fetchSearchResults({required String query}) async {
    emit(SearchBooksLoading());
    final result = await searchRepo.fetchSearchResults(query: query);
    result.fold(
      (failure) => emit(SearchBooksFailiure(failure.errMessage)),
      (books) => emit(SearchBooksSuccess(books)),
    );
  }
}
