import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../core/utils/asset.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 47,left:20 ,right:20 ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SvgPicture.asset(AssetsData.logo,height: 20,),
          IconButton(onPressed: (){}, icon:const Icon(FontAwesomeIcons.magnifyingGlass),iconSize: 22,color: Colors.white,)
        ],
      ),
    );
  }
}