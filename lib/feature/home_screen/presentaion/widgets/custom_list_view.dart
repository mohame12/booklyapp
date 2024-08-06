import 'package:booklyapp1/core/utils/styles.dart';
import 'package:booklyapp1/feature/home_screen/presentaion/manger/future_list_cubit/future_list_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'list_view_item.dart';

class CostomListView extends StatelessWidget {
  const CostomListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FutureListCubit, FutureListState>(
  builder: (context, state) {
    if(state is FutureListSuccessData) {
      return Padding(
        padding: const EdgeInsetsDirectional.only(start: 20),
        child: SizedBox(
          height: MediaQuery
              .of(context)
              .size
              .height * 0.26,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: state.book.length,
            itemBuilder: (context, index) => ListViewItem(index: index, book: state.book[index], ),
            separatorBuilder: (BuildContext context, int index) {
              return const SizedBox(width: 10,);
            },),
        ),
      );
    }
    else if(state is FutureListFailureData)
      {
        return Text(state.msg,style: TextStyles.textStyle14,);
      }
    else
      {
        return const Center(child: CircularProgressIndicator());
      }
  },
);
  }
}