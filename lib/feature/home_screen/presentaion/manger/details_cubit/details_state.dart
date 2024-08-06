part of 'details_cubit.dart';

@immutable
sealed class DetailsState {}

final class DetailsInitial extends DetailsState {}
final class DetailsLoading extends DetailsState {}
final class DetailsSuccess extends DetailsState {
  final List<BookModel> book;

  DetailsSuccess({required this.book});
}
final class DetailsFailure extends DetailsState {
  final String e;

  DetailsFailure({required this.e});
}
