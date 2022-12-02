// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class MyIcon extends StatelessWidget {
  const MyIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      // ignore: prefer_const_literals_to_create_immutables
      children: [
        Icon(
          Icons.access_alarm,
          color: Colors.black,
          size: 50.0,
        )
      ],
    );
  }
}
