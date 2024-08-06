import 'package:bloc/bloc.dart';
import 'package:booklyapp1/feature/home_screen/data/models/book_models/BookModel.dart';
import 'package:booklyapp1/feature/home_screen/data/repos/home_repo/home_repo.dart';
import 'package:flutter/material.dart';

part 'best_seller_list_state.dart';

class BestSellerListCubit extends Cubit<BestSellerListState> {
  BestSellerListCubit(this.homeRepo) : super(BestSellerListInitial());
  final HomeRepo homeRepo;
  bestSellerList()
  async {
    emit(BestSellerListLoading());
    var result=await homeRepo.fetchBestSellerData();
    result.fold((failure){
      emit(BestSellerListFailure(failure: failure.toString()));
    }, (book){
      emit(BestSellerListSuccess(book: book));
    });
  }
}
