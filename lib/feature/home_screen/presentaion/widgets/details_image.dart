import 'package:booklyapp1/feature/home_screen/data/models/book_models/BookModel.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';



class DetailsImage extends StatelessWidget {
  const DetailsImage({
    super.key, required this.book,
  });
  final BookModel book;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: SizedBox(
        height: MediaQuery.of(context).size.height*0.28,

        child: AspectRatio(
            aspectRatio:2.8/3.8 ,
            child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: CachedNetworkImage(
                  errorWidget:(context, url, error) =>  const Icon(FontAwesomeIcons.exclamation),
                  imageUrl: '${book.volumeInfo!.imageLinks!.thumbnail}',fit: BoxFit.cover,)),
        )),
      );
  }
}