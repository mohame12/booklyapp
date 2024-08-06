import 'package:booklyapp1/core/failur/errors.dart';
import 'package:dartz/dartz.dart';

import '../../models/book_models/BookModel.dart';

abstract class HomeRepo{
  Future<Either<Failure,List<BookModel>>>fetchFutureListHomeData();
  Future<Either<Failure,List<BookModel>>>fetchBestSellerData();
  Future<Either<Failure,List<BookModel>>>fetchDetailsData();
}