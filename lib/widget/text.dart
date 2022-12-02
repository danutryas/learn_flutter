import 'package:flutter/material.dart';

class MyText extends StatelessWidget {
  const MyText({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      "Texta",
      style: TextStyle(fontStyle: FontStyle.italic),
    );
  }
}
