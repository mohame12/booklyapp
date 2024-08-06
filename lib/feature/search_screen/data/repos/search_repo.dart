import 'package:booklyapp1/core/failur/errors.dart';
import 'package:booklyapp1/feature/home_screen/data/models/book_models/BookModel.dart';
import 'package:dartz/dartz.dart';

abstract class SearchRepo{
  Future<Either<Failure,List<BookModel>>>fetchSearchData({required String key});
}