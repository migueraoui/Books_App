import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:sortingandsearchingalgorithm/widgets/background_widget.dart';
import 'package:sortingandsearchingalgorithm/widgets/book_card_widget.dart';
import 'package:sortingandsearchingalgorithm/data/book_data.dart';
import '../classes/book.dart';

class Home extends StatelessWidget {
  Home({super.key});

  final PageController controller = PageController();
  final List<Book> books = bookData;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
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
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white.withOpacity(0.7)),
                child: Icon(Icons.search)),
          ),
        ],
      ),
      body: Stack(
        children: [
          BackgroundWidget(controller: controller),
          Align(
            alignment: Alignment.bottomCenter,
            child: CarouselSlider(
              items: books.map((e) => BookCardWidget(book: e)).toList(),
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
    );
  }
}
