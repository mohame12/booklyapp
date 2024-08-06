import 'package:booklyapp1/feature/home_screen/data/models/book_models/BookModel.dart';
import 'package:booklyapp1/feature/home_screen/data/repos/home_repo/home_repo_imp.dart';
import 'package:booklyapp1/feature/home_screen/presentaion/manger/details_cubit/details_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../widgets/Details_screen_body.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  static const String id = 'DetailsScreen';

  @override
  Widget build(BuildContext context) {
    BookModel books=ModalRoute.of(context)!.settings.arguments as BookModel;
    return BlocProvider(
      create: (context) => DetailsCubit(HomeRepoImp()),
      child:  Scaffold(
        body: DetailsBody(books: books,),
      ),
    );
  }
}


