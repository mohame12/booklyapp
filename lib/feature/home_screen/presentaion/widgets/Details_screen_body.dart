import 'package:booklyapp1/core/utils/functins.dart';
import 'package:booklyapp1/core/utils/styles.dart';
import 'package:booklyapp1/feature/home_screen/data/models/book_models/BookModel.dart';
import 'package:booklyapp1/feature/home_screen/presentaion/manger/details_cubit/details_cubit.dart';
import 'package:booklyapp1/feature/home_screen/presentaion/widgets/rating_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'container_rating.dart';
import 'details_app_bar.dart';
import 'details_image.dart';
import 'like_text_details.dart';
import 'list_view_likes_details.dart';

class DetailsBody extends StatefulWidget {
  const DetailsBody({
    super.key, required this.books,
  });

  final BookModel books;
  @override
  State<DetailsBody> createState() => _DetailsBodyState();
}

class _DetailsBodyState extends State<DetailsBody> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    BlocProvider.of<DetailsCubit>(context).fetchDetails();
  }
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Column(
            children: [
              const DetailsAppBar(),
               DetailsImage(book:widget.books,),
              const SizedBox(height: 30,),
               Text('${widget.books.volumeInfo!.title}',textAlign: TextAlign.center,style: TextStyles.textStyle30,),
              const SizedBox(height: 6,),
              Text(widget.books.volumeInfo!.authors![0],style: TextStyles.textStyle18.copyWith(color: Colors.grey),),
              const SizedBox(height: 15,),
               RatingDetails(book: widget.books,),

              const SizedBox(height: 37,),

               ContainerRating(onTap: () async {
               launchMyUrl(url: widget.books.volumeInfo!.previewLink??'https://www.google.co.uk/',context: context);
               },),
              const Expanded(child: SizedBox(height: 51,)),
              const LikeTextDetails(),
              const SizedBox(height: 10,),
              const ListViewLikesDetails(),
              const SizedBox(height: 40,)


            ],
          ),
        )
      ],
    );
  }
}













