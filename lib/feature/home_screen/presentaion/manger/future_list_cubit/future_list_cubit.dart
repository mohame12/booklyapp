import 'package:bloc/bloc.dart';
import 'package:booklyapp1/feature/home_screen/data/repos/home_repo/home_repo.dart';
import 'package:flutter/material.dart';

import '../../../data/models/book_models/BookModel.dart';

part 'future_list_state.dart';

class FutureListCubit extends Cubit<FutureListState> {
  FutureListCubit(this.homeRepo) : super(FutureListInitial());
  final HomeRepo homeRepo;

  futureListView()
  async {
    emit(FutureListLoadingData());
    var result=await homeRepo.fetchFutureListHomeData();
    result.fold((failure){
      emit(FutureListFailureData(msg: failure.toString()));
    }, (book){
      emit(FutureListSuccessData(book: book));
    });
  }
}
