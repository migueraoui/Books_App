import 'package:sortingandsearchingalgorithm/classes/book.dart';

class BookSortingController {
  bool nameSorted = true;
  bool yearSorted = true;

  List<Book> sortBooksByName(List<Book> books) {
    if (nameSorted) {
      books.sort((book1, book2) => book1.nameBook.compareTo(book2.nameBook));
    } else {
      books.sort((book1, book2) => book2.nameBook.compareTo(book1.nameBook));
    }
    nameSorted = !nameSorted;
    return books;
  }

  List<Book> sortBooksByYear(List<Book> books) {
    if (yearSorted) {
      books.sort(
          (book1, book2) => book1.dateReleased.compareTo(book2.dateReleased));
    } else {
      books.sort(
          (book1, book2) => book2.dateReleased.compareTo(book1.dateReleased));
    }
    yearSorted = !yearSorted;
    return books;
  }
}
