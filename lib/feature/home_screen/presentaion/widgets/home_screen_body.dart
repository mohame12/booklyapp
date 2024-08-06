import 'package:flutter/material.dart';
import '../../../../core/utils/styles.dart';
import 'best_seller_list_view.dart';
import 'custom_app_bar.dart';
import 'custom_list_view.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return  const SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(),
          SizedBox(height: 30,),
          CostomListView(),
          SizedBox(height: 51,),
          Padding(
            padding: EdgeInsetsDirectional.only(start: 20),
            child: Text('Best Seller',style: TextStyles.textStyle18,),
          ),
          SizedBox(height: 20,),
          BestSellerListView()
        ],
      ),
    );
  }
}









