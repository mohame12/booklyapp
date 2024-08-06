import 'package:booklyapp1/core/dio/dio_helper.dart';
import 'package:booklyapp1/core/failur/errors.dart';
import 'package:booklyapp1/feature/home_screen/data/repos/home_repo/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../models/book_models/BookModel.dart';

class HomeRepoImp implements HomeRepo
{
  @override

  Future<Either<Failure, List<BookModel>>> fetchFutureListHomeData() async {
    try {
      var data = await DioHelper.getData(
          url: 'volumes?Filtering=free-ebooks&q=programming');

      List<BookModel> books = [];
      for (var item in data.data['items']) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDiorError(e));
      }
      print(e.toString());

      return left(ServerFailure(e.toString()));
    }
  }


  @override
  Future<Either<Failure, List<BookModel>>> fetchBestSellerData() async {
    try {
      Response response = await DioHelper.getData(
          url: 'volumes?Filtering=free-ebooks&q=flutter');
      List<BookModel>books=[];
      for(var item in response.data['items'])
        {
          books.add(BookModel.fromJson(item));
        }

      return right(books);
    }catch(e){
      if(e is DioException){
        return left(ServerFailure.fromDiorError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchDetailsData() async {
   try {
     Response response = await DioHelper.getData(
         url: 'volumes?Filtering=free-ebooks&q=programming&Sorting=relevance');
     List<BookModel>books = [];
     for (var item in response.data['items']) {
       books.add(BookModel.fromJson(item));
     }
     return right(books);
   }catch(e)
    {
      if(e is DioException)
        {
          return left(ServerFailure.fromDiorError(e));
        }
      return left(ServerFailure(e.toString()));
    }
  }


  
  
  


}