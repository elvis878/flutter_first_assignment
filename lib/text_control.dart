import 'package:flutter/material.dart';

class TextControl extends StatelessWidget {
  final int textIndex;
  final int textLength;
  final VoidCallback refreshTextHandler;
  final VoidCallback resetHandler;

  const TextControl({
    super.key,
    required this.textIndex,
    required this.textLength,
    required this.refreshTextHandler,
    required this.resetHandler,
  });

  @override
  Widget build(BuildContext context) {
    if (textIndex < textLength) {
      return ElevatedButton.icon(
        onPressed: refreshTextHandler,
        icon: const Icon(Icons.download),
        label: const Text('Get another text'),
      );
    }

    return ElevatedButton.icon(
      onPressed: resetHandler,
      icon: const Icon(Icons.refresh_outlined),
      label: const Text('Reset'),
    );
  }
}
