import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyAnimatedContainer extends StatefulWidget {
  const MyAnimatedContainer({super.key});

  @override
  State<MyAnimatedContainer> createState() => _MyAnimatedContainerState();
}

class _MyAnimatedContainerState extends State<MyAnimatedContainer> {
  int counter = 0;
  String message = "Click Me";
  Random random = Random();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          counter++;
          message = "Click Again ($counter)";
        });
      },
      child: AnimatedContainer(
        duration: const Duration(seconds: 1),
        color: Color.fromARGB(
            255, random.nextInt(256), random.nextInt(256), random.nextInt(256)),
        width: 50.0 + random.nextInt(100),
        height: 50.0 + random.nextInt(100),
        child: Center(child: Text(message)),
        // child: Text,
      ),
    );
  }
}
