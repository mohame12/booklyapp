part of 'search_cubit.dart';

@immutable
sealed class SearchState {}

final class SearchInitial extends SearchState {}
final class SearchSuccess extends SearchState {
  final List<BookModel>book;

  SearchSuccess({required this.book});
}
final class SearchLoading extends SearchState {}
final class SearchFailure extends SearchState {
  final String msg;

  SearchFailure({required this.msg});
}


final class SearchTffOnChange extends SearchState {}
