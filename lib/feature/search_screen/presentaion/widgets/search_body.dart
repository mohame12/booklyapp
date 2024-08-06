import 'package:booklyapp1/feature/search_screen/presentaion/manger/search_cubit/search_cubit.dart';
import 'package:booklyapp1/feature/search_screen/presentaion/widgets/search_list.dart';
import 'package:booklyapp1/feature/search_screen/presentaion/widgets/tff.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/utils/styles.dart';


class SearchBody extends StatelessWidget {
  const SearchBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocListener<SearchCubit,SearchState>(
      listener: (context, state) {
      },
      child: Padding(
        padding: const EdgeInsetsDirectional.symmetric(horizontal: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TFF(
              onFieldSubmitted: BlocProvider.of<SearchCubit>(context).onSubmitted
              ),
            const Padding(
              padding: EdgeInsetsDirectional.symmetric(vertical: 15),
              child: Text('Search Results', style: TextStyles.textStyle18,),
            ),
            const SearchList(),

          ],
        ),
      ),
    );
  }
}





