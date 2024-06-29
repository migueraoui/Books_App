import 'package:flutter/material.dart';
import 'package:sortingandsearchingalgorithm/classes/book.dart';
import 'package:sortingandsearchingalgorithm/widgets/book_card.dart';
import 'package:sortingandsearchingalgorithm/widgets/get_link_button.dart';

class BookScreen extends StatelessWidget {
  final Book book;

  const BookScreen({Key? key, required this.book}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Book details"),
          centerTitle: true,
          actions: const [
            Icon(
              Icons.favorite_border,
              color: Colors.red,
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: BookCard(book: book),
          ),
        ),
        floatingActionButton: GetLinkBookButton(
          buttonText: "Get Book Link",
          onPressed: () {},
        ));
  }
}
