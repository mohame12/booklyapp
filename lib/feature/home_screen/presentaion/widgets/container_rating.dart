import 'package:flutter/material.dart';

import '../../../../constants.dart';
import '../../../../core/utils/styles.dart';

class ContainerRating extends StatelessWidget {
  const ContainerRating({
    super.key, required this.onTap,
  });

  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height:MediaQuery.of(context).size.height*0.05,
          width:MediaQuery.of(context).size.width*0.38,
          decoration: const BoxDecoration(
              color: kWhiteColor,
              borderRadius: BorderRadiusDirectional.only(topStart: Radius.circular(10),bottomStart: Radius.circular(10))
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(child: Text('Free',style: TextStyles.textStyle16.copyWith(color: Colors.black,fontWeight: FontWeight.bold),)),
          ),
        ),
        GestureDetector(
          onTap: onTap,
          child: Container(
            height:MediaQuery.of(context).size.height*0.05,
            width:MediaQuery.of(context).size.width*0.38,
            decoration: const BoxDecoration(
                color: kRedColor,
                borderRadius: BorderRadiusDirectional.only(topEnd:Radius.circular(10) ,bottomEnd:Radius.circular(10) )
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(child: Text('Free preview',style: TextStyles.textStyle16.copyWith(fontWeight: FontWeight.bold),)),
            ),
          ),
        ),
      ],
    );
  }
}