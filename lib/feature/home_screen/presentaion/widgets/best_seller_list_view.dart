import 'package:booklyapp1/feature/home_screen/presentaion/manger/best_seller_list/best_seller_list_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'list_view_virtical_item.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BestSellerListCubit, BestSellerListState>(
      builder: (context, state) {
        if (state is BestSellerListSuccess) {
          return ListView.builder(
            padding: EdgeInsets.zero,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: state.book.length,
            itemBuilder: (context, index) => VirticalListViewItem(bookModel:state.book[index]
            ),
          );
        } else if (state is BestSellerListFailure) {
          return Center(child: Text(state.failure));
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
