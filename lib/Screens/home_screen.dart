import 'package:flutter/material.dart';
import '../classes/book.dart';
import '../controllers/book_navigate_controller.dart';
import '../controllers/book_search_controller.dart';
import '../controllers/book_sorting_controller.dart';
import '../data/book_data.dart';
import '../widgets/book_tile_widget.dart';
import '../widgets/sort_button.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController searchController = TextEditingController();
  BookSortingController bookSortingController = BookSortingController();
  List<Book> displayList = [];

  @override
  void initState() {
    super.initState();
    displayList = bookData;
  }

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }

  void sortBooksByName() {
    setState(() {
      displayList = bookSortingController.sortBooksByName(displayList);
    });
  }

  void sortBooksByYear() {
    setState(() {
      displayList = bookSortingController.sortBooksByYear(displayList);
    });
  }

  void performSearch(String query) {
    setState(() {
      displayList = bookData
          .where((book) =>
              book.nameBook.toLowerCase().contains(query.toLowerCase()) ||
              book.writerBook.toLowerCase().contains(query.toLowerCase()) ||
              book.keywords.any((keyword) =>
                  keyword.toLowerCase().contains(query.toLowerCase())))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: const Text("WizardBook Info"),
        actions: [
          IconButton(
            onPressed: () {
              showSearch(
                context: context,
                delegate: BookSearchController(
                  books: bookData,
                  getSearch: (String resultIdQuery) {
                    setState(() {
                      searchController.text = resultIdQuery;
                    });
                  },
                ),
              );
            },
            icon: const Icon(Icons.search),
          ),
          // IconButton(
          //   // backgroundColor: Colors.amber,
          //   icon: Icon(Icons.sort),
          //   onPressed: () {
          //     showModalBottomSheet(
          //       context: context,
          //       builder: (context) {
          //         return Column(
          //           mainAxisSize: MainAxisSize.min,
          //           children: <Widget>[
          //             ListTile(
          //               leading: Icon(Icons.sort_by_alpha),
          //               title: Text('Sort A-Z'),
          //               onTap: () {
          //                 // Sort by A-Z
          //                 Navigator.pop(context);
          //               },
          //             ),
          //             ListTile(
          //               leading: Icon(Icons.sort_by_alpha),
          //               title: Text('Sort Z-A'),
          //               onTap: () {
          //                 // Sort by Z-A
          //                 Navigator.pop(context);
          //               },
          //             ),
          //             ListTile(
          //               leading: Icon(Icons.date_range),
          //               title: Text('Sort by Year'),
          //               onTap: () {
          //                 // Sort by Year
          //                 Navigator.pop(context);
          //               },
          //             ),
          //           ],
          //         );
          //       },
          //     );
          //   },
          // )
        PopupMenuButton<String>(
          icon: Icon(Icons.sort),
      onSelected: (value) {
        setState(() {
            if (value == 'Sort by Alphabet') {
              sortBooksByName();
            }
            else  if (value == 'Sort by Year') {
              sortBooksByYear();
            }
 
        });
      },
      itemBuilder: (BuildContext context) {
        return {'Sort by Alphabet', 'Sort by Year'}.map((String choice) {
          return PopupMenuItem<String>(
            value: choice,
            child: Text(choice),
          );
        }).toList();
      },
    ),
        ],
      ),
      body: Center(
        child: Column(
          children: [
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: [
            //     SortButton(
            //       nameButton: 'Sort by Name',
            //       onPressed: sortBooksByName,
            //     ),
            //     const SizedBox(width: 20),
            //     SortButton(
            //       nameButton: 'Sort by Year',
            //       onPressed: sortBooksByYear,
            //     ),
            //   ],
            // ),
            Expanded(
              child: ListView.builder(
                itemCount: displayList.length,
                itemBuilder: (context, index) {
                  final book = displayList[index];
                  return BookTileWedget(
                    book: book,
                    onTap: () {
                      BookNavigateController.navigateToBookScreen(
                          context, book);
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
