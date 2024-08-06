part of 'best_seller_list_cubit.dart';

@immutable
sealed class BestSellerListState {}

final class BestSellerListInitial extends BestSellerListState {}
final class BestSellerListLoading extends BestSellerListState {}
final class BestSellerListSuccess extends BestSellerListState {
  final List<BookModel>book;

  BestSellerListSuccess({required this.book});
}
final class BestSellerListFailure extends BestSellerListState {
  final String failure;
  BestSellerListFailure({required this.failure});
}
