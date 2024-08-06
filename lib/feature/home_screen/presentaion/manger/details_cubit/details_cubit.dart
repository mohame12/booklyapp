import 'package:bloc/bloc.dart';
import 'package:booklyapp1/feature/home_screen/data/repos/home_repo/home_repo.dart';
import 'package:flutter/material.dart';

import '../../../data/models/book_models/BookModel.dart';

part 'details_state.dart';

class DetailsCubit extends Cubit<DetailsState> {
  DetailsCubit(this.homeRepo) : super(DetailsInitial());
  final HomeRepo homeRepo;

  fetchDetails()
  async {
    emit(DetailsLoading());
    var result=await homeRepo.fetchDetailsData();
    result.fold((failure){
      emit(DetailsFailure(e: failure.toString()));
    }, (book){
      emit(DetailsSuccess(book: book));
    });
  }
}
