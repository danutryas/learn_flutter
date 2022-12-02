import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  const MyButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        IconButton(
          onPressed: () {
            print("clicked");
          },
          icon: const Icon(Icons.ac_unit_sharp),
          color: Colors.amber,
        ),
        TextButton(onPressed: () {}, child: const Text('a'))
      ],
    );
  }
}
