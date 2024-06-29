import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  final String bookName;
  final String bookWriterName;
  final String bookDescription;
  final String bookImagePath;

  const CustomListTile({
    Key? key,
    required this.bookName,
    required this.bookWriterName,
    required this.bookDescription,
    required this.bookImagePath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Image img = Image.asset(bookImagePath);
    return Container(
      padding: const EdgeInsets.all(10),
      child: Row(
        children: [
          Container(
            width: 120,
            height: 170,
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              image: DecorationImage(image: img.image, fit: BoxFit.cover),
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  bookName,
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  bookWriterName,
                  style: const TextStyle(
                      fontSize: 14, fontWeight: FontWeight.normal),
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  bookDescription,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
