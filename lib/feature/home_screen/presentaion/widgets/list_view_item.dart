import 'package:booklyapp1/feature/home_screen/data/models/book_models/BookModel.dart';
import 'package:booklyapp1/feature/home_screen/presentaion/views/details_screen.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class ListViewItem extends StatelessWidget {
  const ListViewItem({
    super.key, required this.index, required this.book,
  });

  final int index;
  final BookModel book;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.pushNamed(context, DetailsScreen.id,arguments:book );
      },
      child: Stack(
          alignment: Alignment.bottomRight,
          children:[
            AspectRatio(aspectRatio: 2.6/4,
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child:  CachedNetworkImage(
                        fit: BoxFit.cover,
                        errorWidget: (context, url, error) => const Icon(FontAwesomeIcons.circleExclamation),
                        imageUrl: '${book.volumeInfo!.imageLinks!.thumbnail}')
                )
            ),
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