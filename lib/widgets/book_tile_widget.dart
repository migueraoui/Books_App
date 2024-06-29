import 'package:flutter/material.dart';
import 'package:sortingandsearchingalgorithm/widgets/custom_list_tile.dart';

import '../classes/book.dart';

class BookTileWedget extends StatelessWidget {
  final Book book;
  final VoidCallback onTap;

  const BookTileWedget({
    Key? key,
    required this.book,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: CustomListTile(
        bookName: "${book.nameBook} (${book.dateReleased})",
        bookWriterName: book.writerBook,
        bookDescription: book.description,
        bookImagePath: book.imageBook,
      ),
    );
  }
}
