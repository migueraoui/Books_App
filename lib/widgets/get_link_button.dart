import 'package:flutter/material.dart';

class GetLinkBookButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String buttonText;

  GetLinkBookButton({
    Key? key,
    required this.onPressed,
    required this.buttonText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50.0,
      width: 120.0,
      child: FloatingActionButton(
        onPressed: onPressed,
        backgroundColor: Colors.grey.shade200,
        child: Text(
          buttonText,
          style: const TextStyle(fontSize: 16),
        ),
      ),
    );
  }
}
