import 'package:flutter/material.dart';
import '../../../../core/utils/styles.dart';
import 'custom_app_bar.dart';
import 'custom_list_view.dart';
import 'list_view_virtical_item.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomAppBar(),
          const SizedBox(height: 30,),
          const CostomListView(),
          const SizedBox(height: 51,),
          const Padding(
            padding: EdgeInsetsDirectional.only(start: 20),
            child: Text('Best Seller',style: TextStyles.textStyle18,),
          ),
          SizedBox(height: 20,),
          ListView.builder(
            padding: EdgeInsets.zero,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 6,
            itemBuilder: (context, index) => const VirticalListViewItem(),)
        ],
      ),
    );
  }
}







