import 'package:flutter/material.dart';

import '../classes/book.dart';

class BookCard extends StatelessWidget {
  final Book book;

  BookCard({required this.book});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.asset(
                book.imageBook,
                height: 200,
                errorBuilder: (context, error, stackTrace) {
                  return Image.asset('assets/images/0.png', height: 200);
                },
              ),
            ),
            const SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 100),
              child: Text(
                book.nameBook,
                style:
                    const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Row(
                  children: [
                    Icon(
                      Icons.star_half_rounded,
                      color: Colors.amber,
                    ),
                    Text(
                      "4.7",
                      style:
                          TextStyle(fontSize: 16, fontStyle: FontStyle.italic),
                    ),
                  ],
                ),
                Text(
                  "Written by: ${book.writerBook}",
                  style: const TextStyle(
                      fontSize: 16, fontStyle: FontStyle.italic),
                ),
                Text(
                  "Year : ${book.dateReleased}",
                  style: const TextStyle(
                      fontSize: 16, fontStyle: FontStyle.italic),
                )
              ],
            ),

            const SizedBox(height: 10),

            // const SizedBox(height: 10),
            // Text(
            //   "Released: ${book.dateReleased}",
            //   style: const TextStyle(fontSize: 16),
            // ),
            const SizedBox(height: 20),
            Text(
              "Resume : ",
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            Text(
              book.description,
              style: const TextStyle(fontSize: 16),
            ),
            // const SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
