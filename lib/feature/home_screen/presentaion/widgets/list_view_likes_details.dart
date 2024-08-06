import 'package:booklyapp1/feature/home_screen/presentaion/manger/details_cubit/details_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'list_item_likes_details.dart';

class ListViewLikesDetails extends StatelessWidget {
  const ListViewLikesDetails({
    super.key,
  });

  
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DetailsCubit,DetailsState>(
      builder: (context, state) {
        if(state is DetailsSuccess) {
          return Padding(
            padding: const EdgeInsetsDirectional.only(start: 20),
            child: SizedBox(
              height: MediaQuery
                  .of(context)
                  .size
                  .height * 0.18,
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: 6,
                itemBuilder: (context, index) =>  ListItemLikesDetails(book: state.book[index],),),
            ),
          );
        }
        else if(state is DetailsFailure)
          {
            return Center(child: Text(state.e));
          }else
            {
              return const Center(child: CircularProgressIndicator()) ;
            }
      },
    );
  }
}