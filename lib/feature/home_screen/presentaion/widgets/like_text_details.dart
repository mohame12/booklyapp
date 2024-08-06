import 'package:flutter/material.dart';

import '../../../../core/utils/styles.dart';

class LikeTextDetails extends StatelessWidget {
  const LikeTextDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsetsDirectional.only(start: 30),
          child: Text('You can also like',style: TextStyles.textStyle14.copyWith(fontWeight: FontWeight.bold),),
        ),
      ],
    );
  }
}