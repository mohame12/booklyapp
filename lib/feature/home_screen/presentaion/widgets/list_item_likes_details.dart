import 'package:booklyapp1/feature/home_screen/data/models/book_models/BookModel.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ListItemLikesDetails extends StatelessWidget {
  const ListItemLikesDetails({
    super.key, required this.book,
  });

  final BookModel book;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.symmetric(horizontal: 6),
      child: SizedBox(
        child: AspectRatio(
          aspectRatio: 2/3.2,
          child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child:CachedNetworkImage(
                  errorWidget:(context, url, error) =>  const Icon(FontAwesomeIcons.exclamation),
                  imageUrl: '${book.volumeInfo!.imageLinks!.thumbnail}',fit: BoxFit.cover,)),
        ),
      ),
    );
  }
}