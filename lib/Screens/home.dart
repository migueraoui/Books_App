import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:sortingandsearchingalgorithm/Screens/book_screen.dart';
import 'package:sortingandsearchingalgorithm/widgets/background_widget.dart';
import 'package:sortingandsearchingalgorithm/widgets/book_card_widget.dart';
import 'package:sortingandsearchingalgorithm/data/book_data.dart';
import '../classes/book.dart';
import '../controllers/book_search_controller.dart';
import '../controllers/book_sorting_controller.dart';

class Home extends StatefulWidget {
  Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final PageController controller = PageController();

  final List<Book> books = bookData;
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
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        // backgroundColor: Colors.blue.shade200,
        leading: Padding(
          padding: const EdgeInsets.all(05),
          child: Container(
            margin: EdgeInsets.only(left: 5),
            height: 30,
            width: 35,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white.withOpacity(0.7)),
            child: Icon(Icons.menu),
          ),
        ),
        title: Text("Bookly"),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white.withOpacity(0.7)),
                child: GestureDetector(
                  child: Icon(Icons.search),
                  onTap: () {
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
                )),
          ),
          Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white.withOpacity(0.7)),
            child: PopupMenuButton<String>(
              icon: const Icon(Icons.sort),
              onSelected: (value) {
                setState(() {
                  if (value == 'Sort by Alphabet') {
                    sortBooksByName();
                  } else if (value == 'Sort by Year') {
                    sortBooksByYear();
                  }
                });
              },
              itemBuilder: (BuildContext context) {
                return {'Sort by Alphabet', 'Sort by Year'}
                    .map((String choice) {
                  return PopupMenuItem<String>(
                    value: choice,
                    child: Text(choice),
                  );
                }).toList();
              },
            ),
          ),
        ],
      ),
      body: GestureDetector(
        child: Stack(
          children: [
            BackgroundWidget(controller: controller),
            Align(
              alignment: Alignment.bottomCenter,
              child: CarouselSlider(
                items: books
                    .map((e) => GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => BookScreen(book: e),
                            ),
                          );
                        },
                        child: BookCardWidget(book: e)))
                    .toList(),
                options: CarouselOptions(
                  enableInfiniteScroll: false,
                  viewportFraction: 0.7,
                  height: MediaQuery.of(context).size.height * 0.6,
                  enlargeCenterPage: true,
                  onPageChanged: (index, reason) => controller.animateToPage(
                    index,
                    duration: Duration(seconds: 1),
                    curve: Curves.ease,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
