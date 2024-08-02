import 'package:flutter/material.dart';

import 'list_view_item.dart';

class CostomListView extends StatelessWidget {
  const CostomListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.only(start: 20),
      child: SizedBox(
        height: MediaQuery.of(context).size.height*0.26,
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemCount: 5,
          itemBuilder: (context, index) => ListViewItem(index: index,), separatorBuilder: (BuildContext context, int index) { return const SizedBox(width: 10,); },),
      ),
    );
  }
}