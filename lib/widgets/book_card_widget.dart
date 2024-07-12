import 'package:flutter/material.dart';

import '../classes/book.dart';

class BookCardWidget extends StatelessWidget {
  final Book book;

  BookCardWidget({Key? key, required this.book}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(0),
      child: Container(
        child: Column(
          children: [
            Expanded(child: buildImage(book: book)),
            const SizedBox(
              height: 15,
            ),
            Text(
              overflow : TextOverflow.ellipsis,
              book.nameBook,
              textAlign: TextAlign.center,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 30, ),
            ),
            const SizedBox(
              height: 10,
            ),
            buildKeywords(book: book),
            const SizedBox(
              height: 15,
            ),
            // Expanded(child: buildRating(book: book)),
          ],
        ),
      ),
    );
  }

  Widget buildImage({required Book book}) => Container(
        margin: const EdgeInsets.only(top: 15),
        padding: const EdgeInsets.only(top: 15),
        child: ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(25)),
          child: Image.asset(
            book.imageBook,
            fit: BoxFit.fill,
          ),
        ),
      );

  Widget buildKeywords({required Book book}) => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: book.keywords
            .take(2)
            .map((keyword) => Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey[600]!),
                        borderRadius: BorderRadius.circular(15)),
                    padding: const EdgeInsets.all(5),
                    child: Text(
                      keyword,
                      style: TextStyle(color: Colors.black, fontSize: 12),
                    ),
                  ),
                ))
            .toList(),
      );

  // Widget buildRating({required Book book}) => Row(
  //       crossAxisAlignment: CrossAxisAlignment.center,
  //       mainAxisAlignment: MainAxisAlignment.center,
  //       children: [
  //         Text(book.rating.toStringAsFixed(1)),
  //         SizedBox(width: 10),
  //         ...List.generate(
  //           book.stars,
  //           (index) => Icon(Icons.star_rate, size: 18, color: Colors.orange),
  //         ),
  //       ],
  //     );
}
