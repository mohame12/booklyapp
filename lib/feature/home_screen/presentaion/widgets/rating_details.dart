import 'package:booklyapp1/feature/home_screen/data/models/book_models/BookModel.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../core/utils/styles.dart';

class RatingDetails extends StatelessWidget {
  const RatingDetails({
    super.key, required this.book,
  });
final BookModel book;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(FontAwesomeIcons.solidStar,color: Colors.yellow,size: 13,),
        const SizedBox(width: 6,),
        Text('${book.volumeInfo?.averageRating ??0}',style: TextStyles.textStyle16,),
        const SizedBox(width: 6,),
        Text('(${book.volumeInfo?.ratingsCount ?? 0})',style: TextStyles.textStyle14.copyWith(color: Colors.grey),)
      ],
    );
  }
}