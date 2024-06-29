import 'package:flutter/services.dart' show rootBundle;

class Book {
  final int idBook;
  final String nameBook;
  final String dateReleased;
  final String writerBook;
  // String linkBook;
  final List<String> keywords;
  final String description;
  String imageBook = 'assets/images/0.png';

  Book({
    required this.idBook,
    required this.nameBook,
    required this.dateReleased,
    required this.writerBook,
    // required this.linkBook,
    required this.keywords,
    required this.description,
  }) {
    _setImageBook();
  }

  void _setImageBook() async {
    String path = 'assets/images/$idBook.png';
    try {
      await rootBundle.load(path);
      imageBook = path;
    } catch (e) {
      imageBook = 'assets/images/0.png';
    }
  }
}
