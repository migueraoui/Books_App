import 'package:flutter/material.dart';

import '../classes/book.dart';
import '../widgets/book_tile_widget.dart';
import 'book_navigate_controller.dart';


class BookSearchController extends SearchDelegate<String> {
  final List<Book> books;
  final Function(String) getSearch;

  BookSearchController({required this.books, required this.getSearch});

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: const Icon(Icons.clear),
        onPressed: () {
          query = '';
          showSuggestions(context);
        },
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: AnimatedIcon(
        icon: AnimatedIcons.menu_arrow,
        progress: transitionAnimation,
      ),
      onPressed: () {
        close(context, '');
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    final results = books
        .where((book) =>
            book.nameBook.toLowerCase().contains(query.toLowerCase()) ||
            book.writerBook.toLowerCase().contains(query.toLowerCase()) ||
            book.keywords.any((keyword) =>
                keyword.toLowerCase().contains(query.toLowerCase())))
        .toList();

    if (results.isEmpty) {
      return const Center(
        child: Text('No Books found.'),
      );
    }


    return ListView.builder(
      itemCount: results.length,
      itemBuilder: (context, index) {
        final book = results[index];
        return BookTileWedget(
          book: book,
          onTap: () {
            BookNavigateController.navigateToBookScreen(context, book);
          },
        );
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    if (query.isEmpty) {
      return const Center(
        child: Text('Start typing to search for books'),
      );
    }

    final suggestions = books
        .where((book) =>
            book.nameBook.toLowerCase().contains(query.toLowerCase()) ||
            book.writerBook.toLowerCase().contains(query.toLowerCase()) ||
            book.keywords.any((keyword) =>
                keyword.toLowerCase().contains(query.toLowerCase())))
        .toList();

    return ListView.builder(
      itemCount: suggestions.length,
      itemBuilder: (context, index) {
        final book = suggestions[index];
        return ListTile(
          leading: Image.asset(
            book.imageBook,
            errorBuilder: (context, error, stackTrace) {
              return Image.asset('assets/images/0.png');
            },
          ),
          title: Text(book.nameBook),
          subtitle: Text('${book.writerBook} (${book.dateReleased})'),
          onTap: () {
            BookNavigateController.navigateToBookScreen(context, book);
          },
        );
      },
    );
  }
}
