import 'package:flutter/material.dart';
import 'package:sortingandsearchingalgorithm/screens/book_screen.dart';
import 'package:sortingandsearchingalgorithm/classes/book.dart';

class BookNavigateController {
  static void navigateToBookScreen(BuildContext context, Book book) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => BookScreen(book: book),
      ),
    );
  }
}
