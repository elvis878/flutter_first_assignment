import 'package:flutter/material.dart';

class TextOutput extends StatelessWidget {
  final int textIndex;
  final int textLength;
  final List<String> texts;

  const TextOutput(
      {super.key,
      required this.textIndex,
      required this.textLength,
      required this.texts});

  @override
  Widget build(BuildContext context) {
    if (textIndex < textLength) {
      return Text(
        texts[textIndex],
        style: const TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.w600,
        ),
      );
    }

    return const Text(
      'No more text to show',
      style: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}
