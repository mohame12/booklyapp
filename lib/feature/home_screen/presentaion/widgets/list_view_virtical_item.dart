import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../../core/utils/asset.dart';
import '../../../../core/utils/styles.dart';
import '../views/details_screen.dart';

class VirticalListViewItem extends StatelessWidget {
  const VirticalListViewItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.symmetric(horizontal: 20,vertical: 10),
      child: GestureDetector(
        onTap: (){
          Navigator.pushNamed(context, DetailsScreen.id);
        },
        child: Container(
          height: MediaQuery.of(context).size.height*0.19,
          width: double.infinity,
          child: Row(
            children: [
              AspectRatio(
                aspectRatio: 2.5/4,
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: const Image(image: AssetImage(AssetsData.test),fit: BoxFit.cover,)),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsetsDirectional.only(start: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('Harry Potter and the Goblet of Fire',maxLines: 2,overflow: TextOverflow.ellipsis,style: TextStyles.textStyle20,),
                      const SizedBox(height: 4,),
                      Text('J.k. Rowling',style:TextStyles.textStyle14.copyWith(color: Colors.grey),),
                      const SizedBox(height: 8,),
                      Row(
                        children: [
                          const Text('19.99 \$',style: TextStyles.textStyle20),
                          const Spacer(),
                          const Icon(FontAwesomeIcons.solidStar,size: 14,color: Colors.yellow,),
                          const SizedBox(width: 6,),
                          const Text('4.8',style: TextStyles.textStyle16,),
                          const SizedBox(width: 6,),
                          Text('(2349)',style: TextStyles.textStyle16.copyWith(color: Colors.grey),)
                        ],
                      )


                    ],),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}