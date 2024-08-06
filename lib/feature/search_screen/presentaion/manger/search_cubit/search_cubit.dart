import 'package:bloc/bloc.dart';
import 'package:booklyapp1/feature/search_screen/data/repos/search_repo.dart';
import 'package:flutter/material.dart';

import '../../../../home_screen/data/models/book_models/BookModel.dart';

part 'search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchCubit(this.searchRepo) : super(SearchInitial());
  final SearchRepo searchRepo;

  fetchSearchData({required String key})
  async {
    emit(SearchLoading());
    var result=await searchRepo.fetchSearchData(key: key);
    result.fold((failure){
      emit(SearchFailure(msg: failure.toString()));
    }, (book){
      emit(SearchSuccess(book: book));
    });

  }



  onChangeTFF(val )
   async {
     await fetchSearchData(key: val);
  }
  onSubmitted(val)
  async {
    await fetchSearchData(key: val);
  }
}
