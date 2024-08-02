import 'package:booklyapp1/feature/home_screen/presentaion/views/details_screen.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/asset.dart';

class ListViewItem extends StatelessWidget {
  const ListViewItem({
    super.key, required this.index,
  });

  final int index;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.pushNamed(context, DetailsScreen.id);
      },
      child: Stack(
          alignment: Alignment.bottomRight,
          children:[
            AspectRatio(aspectRatio: 2.6/4,
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: const Image(image: AssetImage(AssetsData.test),fit: BoxFit.cover,))),
            Padding(
              padding: const EdgeInsets.only(bottom: 10,right: 5),
              child: FloatingActionButton(
                backgroundColor: Colors.grey.withOpacity(0.2),
                shape: RoundedRectangleBorder(
                  borderRadius:BorderRadius.circular(30),
                ),
                onPressed: (){},
                heroTag: 'book$index',
                child: const Icon(Icons.play_arrow),),
            )
          ]
      ),
    );
  }
}