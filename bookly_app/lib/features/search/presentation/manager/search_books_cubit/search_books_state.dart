part of 'search_books_cubit.dart';

sealed class SearchBooksState extends Equatable {
  const SearchBooksState();

  @override
  List<Object> get props => [];
}

final class SearchBooksInitial extends SearchBooksState {}

final class SearchBooksLoading extends SearchBooksState {}

final class SearchBooksFailiure extends SearchBooksState {
  final String errMessage;

 const SearchBooksFailiure(this.errMessage);
}

final class SearchBooksSuccess extends SearchBooksState {
  final List<BookModel> books;

  const SearchBooksSuccess(this.books);

  
}
