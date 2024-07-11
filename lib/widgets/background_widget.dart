import 'package:flutter/material.dart';
import 'package:sortingandsearchingalgorithm/data/book_data.dart';
import '../classes/book.dart';

class BackgroundWidget extends StatefulWidget {
  final PageController controller;
  BackgroundWidget({super.key, required this.controller});

  @override
  State<BackgroundWidget> createState() => _BackgroundWidgetState();
}

class _BackgroundWidgetState extends State<BackgroundWidget> {
  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      reverse: true,
      physics: NeverScrollableScrollPhysics(),
      controller: widget.controller,
      itemCount: bookData.length,
      itemBuilder: (context, index) {
        final book = bookData[index];
        return buildBackground(book: book);
      },
    );
  }

  Widget buildBackground({required Book book}) => Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
          ),
          Positioned.fill(
            child: Image.asset(
              book.imageBook,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: [0.5, 0.85],
                colors: [Colors.white.withOpacity(0.0001), Colors.white],
              ),
            ),
          ),
        ],
      );
}
