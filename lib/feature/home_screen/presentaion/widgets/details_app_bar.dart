import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../constants.dart';
import '../views/home_screen.dart';

class DetailsAppBar extends StatelessWidget {
  const DetailsAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 47,left:20 ,right:20 ),
      child: Row(
        children: [
          IconButton(onPressed: (){
            Navigator.pushReplacementNamed(context, HomeScreen.id);
          }, icon: const Icon(FontAwesomeIcons.xmark,color: kWhiteColor,size: 25,)),
          const Spacer(),
          IconButton(onPressed: (){}, icon: const Icon(FontAwesomeIcons.cartShopping,color: kWhiteColor))
        ],
      ),
    );
  }
}