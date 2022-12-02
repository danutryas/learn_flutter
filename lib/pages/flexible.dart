import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyFlexibleLayout extends StatelessWidget {
  const MyFlexibleLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Flexible(
          flex: 1,
          child: Row(
            children: [
              Flexible(
                flex: 1,
                child: Container(
                  margin: const EdgeInsets.all(5.0),
                  color: Colors.red,
                ),
              ),
              Flexible(
                flex: 1,
                child: Container(
                  margin: const EdgeInsets.all(5.0),
                  color: Colors.green,
                ),
              ),
              Flexible(
                flex: 1,
                child: Container(
                  margin: const EdgeInsets.all(5.0),
                  color: Colors.blue,
                ),
              ),
            ],
          ),
        ),
        Flexible(
          flex: 2,
          child: Container(
            margin: const EdgeInsets.all(5.0),
            color: Colors.amber,
          ),
        ),
        Flexible(
          flex: 1,
          child: Container(
            margin: const EdgeInsets.all(5.0),
            color: Colors.amber,
          ),
        )
      ],
    );
  }
}
