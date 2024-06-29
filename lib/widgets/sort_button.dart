import 'package:flutter/material.dart';

class SortButton extends StatelessWidget {
  final String nameButton;
  final VoidCallback onPressed;

  const SortButton({
    super.key,
    required this.nameButton,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(),
      child: Text(
        nameButton,
        style: const TextStyle(color: Colors.black),
      ),
    );
  }
}
