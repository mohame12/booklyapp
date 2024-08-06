import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../../core/utils/styles.dart';
import '../../../home_screen/data/models/book_models/BookModel.dart';
import '../../../home_screen/presentaion/views/details_screen.dart';

class SearchVirticalListViewItem extends StatelessWidget {
  const SearchVirticalListViewItem({
    super.key, required this.book,
  });

  final BookModel book;
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsetsDirectional.symmetric(vertical: 10),
        child: GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, DetailsScreen.id,arguments:book);
          },
          child: SizedBox(
            height: MediaQuery
                .of(context)
                .size
                .height * 0.19,
            width: double.infinity,
            child: Row(
              children: [
                AspectRatio(
                  aspectRatio: 2.5 / 4,
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: CachedNetworkImage(
                        errorWidget: (context, url, error) => const Center(child: Icon(FontAwesomeIcons.exclamation)),
                        fit: BoxFit.cover,
                          imageUrl:book.volumeInfo!.imageLinks!.thumbnail??'')
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsetsDirectional.only(start: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '${book.volumeInfo!.title}', maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyles.textStyle20,),
                         const SizedBox(height: 4,),
                        Text(book.volumeInfo!.authors!.isNotEmpty?book.volumeInfo!.authors![0]:'Unknown',
                          style: TextStyles.textStyle14.copyWith(
                              color: Colors.grey),),
                        const SizedBox(height: 8,),
                        Row(
                          children: [
                            const Text(
                                'Free', style: TextStyles.textStyle20),
                            const Spacer(),
                            const Icon(FontAwesomeIcons.solidStar, size: 14,
                              color: Colors.yellow,),
                            const SizedBox(width: 6,),
                             Text('${book.volumeInfo?.averageRating ??0}', style: TextStyles.textStyle16,),
                            const SizedBox(width: 6,),
                            Text('(${book.volumeInfo?.ratingsCount??0})',
                              style: TextStyles.textStyle16.copyWith(
                                  color: Colors.grey),)
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