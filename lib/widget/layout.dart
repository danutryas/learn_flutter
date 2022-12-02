// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyLayout extends StatelessWidget {
  const MyLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            Expanded(
                flex: 2,
                child: Container(
                  padding: const EdgeInsets.all(30.0),
                  color: Colors.cyan,
                  child: Text("1"),
                )),
            Expanded(
                flex: 1,
                child: Container(
                  padding: const EdgeInsets.all(30.0),
                  child: Text("2"),
                  color: Colors.pinkAccent,
                )),
            Expanded(
                flex: 1,
                child: Container(
                  padding: EdgeInsets.all(30.0),
                  child: Text("3"),
                  color: Colors.amber,
                )),
          ],
        )
      ],
    );
  }
}
