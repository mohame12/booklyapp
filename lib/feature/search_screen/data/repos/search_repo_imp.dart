import 'package:booklyapp1/core/dio/dio_helper.dart';
import 'package:booklyapp1/core/failur/errors.dart';
import 'package:booklyapp1/feature/home_screen/data/models/book_models/BookModel.dart';
import 'package:booklyapp1/feature/search_screen/data/repos/search_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class SearchRepoImp implements SearchRepo{
  @override
  Future<Either<Failure, List<BookModel>>> fetchSearchData({required String key}) async {
    try {
      Response response = await DioHelper.getData(
          url: 'volumes?Filtering=free-ebooks&q=$key');
      List<BookModel>books = [];
      for (var item in response.data['items']) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    }catch(e)
    {
       if (e is DioException)
          {
            return left(ServerFailure.fromDiorError(e));
          }
       else
         {
           return left(ServerFailure(e.toString()));
         }
    }
  }
}