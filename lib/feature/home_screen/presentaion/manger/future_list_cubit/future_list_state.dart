part of 'future_list_cubit.dart';

@immutable
sealed class FutureListState {}

final class FutureListInitial extends FutureListState {}
final class FutureListLoadingData extends FutureListState {}
final class FutureListSuccessData extends FutureListState {
  final List<BookModel>book;
  FutureListSuccessData({required this.book});
}
final class FutureListFailureData extends FutureListState {
  final String msg;

  FutureListFailureData({required this.msg});

}
